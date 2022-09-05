import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_base/constant/constant.dart';
import 'package:library_base/generated/l10n.dart';
import 'package:library_base/global/rt_account.dart';
import 'package:library_base/model/account.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/net/apis.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/gaps.dart';
import 'package:library_base/router/routers.dart';
import 'package:library_base/utils/date_util.dart';
import 'package:library_base/utils/object_util.dart';
import 'package:library_base/utils/other_util.dart';
import 'package:library_base/utils/toast_util.dart';
import 'package:library_base/widget/button/gradient_button.dart';
import 'package:library_base/widget/common_scroll_view.dart';
import 'package:library_base/widget/dialog/dialog_util.dart';
import 'package:library_base/widget/image/local_image.dart';
import 'package:library_base/widget/textfield/account_text_field.dart';
import 'package:library_base/widget/textfield/pwd_text_field.dart';
import 'package:module_mine/mine_router.dart';
import 'package:module_mine/viewmodel/login_model.dart';

class LoginPage extends StatefulWidget {
  final String? phone;
  final bool agreeChecked;

  LoginPage({
    this.phone,
    this.agreeChecked = false,
  });
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with BasePageMixin<LoginPage> {

  final TextEditingController _accountController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final FocusNode _accountNode = FocusNode();
  final FocusNode _pwdNode = FocusNode();

  late LoginModel _loginModel;

  bool _loginEnabled = false;
  bool _agreeChecked = true;

  @override
  void initState() {
    super.initState();

    initView();
    _accountController.text="whop1";
    _pwdController.text="abc123456";
    initViewModel();

    _checkInput();
  }

  void initView() {
    if (!ObjectUtil.isEmpty(widget.phone)) {
      _accountController.text = widget.phone!;

    } else {
      Account? account = RTAccount.instance()!.loadAccount();
      if (account != null) {
        // var t = account.phone?.split(' ');
        // _area_code = t?.first;
        // _phoneController.text = t?.last;
        _accountController.text = account.account!;
      }
    }
  }

  void initViewModel() {
    _loginModel = LoginModel();
    _loginModel.addListener(() {
      if (_loginModel.isBusy) {
        showProgress(content: S.current.logingin);
      } else if (_loginModel.isError) {
        closeProgress();
        if (_loginModel.viewStateError?.errno == Apis.ERRNO_NOT_SET_PASSWORD) {
          DialogUtil.showCupertinoAlertDialog(context,
              title: S.of(context).notSetPassword,
              content:  S.of(context).notSetPasswordTips,
              cancel: S.of(context).cancel,
              confirm: S.of(context).smsLogin,
              cancelPressed: () => Navigator.of(context).pop(),
              confirmPressed: () {
                Navigator.of(context).pop();
                // _smsLogin();
              }
          );

        } else {
          ToastUtil.error(_loginModel.viewStateError!.message!);
        }

      } else if (_loginModel.isSuccess) {
        closeProgress();

        String? account = _loginModel.loginResult?.data?.account;
        if (!ObjectUtil.isEmpty(account)) {
          ToastUtil.success(S.current.logingSuccess);
          Routers.navigateTo(context, MineRouter.isRunModule ? Routers.minePage : Routers.mainPage, clearStack: true);

        }
      }
    });
  }

  void _checkInput() {
    setState(() {
      if (!_agreeChecked || ObjectUtil.isEmpty(_accountController.text) || ObjectUtil.isEmpty(_pwdController.text)) {
        _loginEnabled = false;
      } else {
        _loginEnabled = true;
      }
    });
  }

  void _login() {
    String phone = _accountController.text;
    String pwd = _pwdController.text;
    int nonce = DateUtil.getNowDateMs() * 1000;
    // String pwdMd5 = EncryptUtil.encodeMd5(EncryptUtil.encodeMd5(pwd) + nonce.toString()).toLowerCase();
    Routers.navigateTo(context, MineRouter.isRunModule ? Routers.minePage : Routers.mainPage, clearStack: true);
    // _loginModel.login(phone, pwd, nonce);

  }






  void _skip() {
    Routers.navigateTo(context, MineRouter.isRunModule ? Routers.minePage : Routers.mainPage, clearStack: true);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: Colours.white,
        body: CommonScrollView(
          keyboardConfig: OtherUtil.getKeyboardActionsConfig(context, <FocusNode>[_accountNode, _pwdNode]),
          padding: const EdgeInsets.only(left:50.0, right: 50.0, top: 60.0),
          children: <Widget>[
            Center(child: LocalImage('logo', package: Constant.baseLib, width: 60, height: 60,)),
            Gaps.vGap32,
            Center(
              child: Text("福美海外仓",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    height: 1.2,
                  )),
            ),
            Gaps.vGap32,
            AccountTextField(
              focusNode: _accountNode,
              controller: _accountController,
              onTextChanged: _checkInput,
            ),
            Gaps.vGap16,
            PwdTextField(
              focusNode: _pwdNode,
              controller: _pwdController,
              onTextChanged: _checkInput,
            ),
            Gaps.vGap24,
            Gaps.vGap24,
            GradientButton(
              width: double.infinity,
              height: 48,
              text: S.of(context).login,
              colors: <Color>[   //背景渐变
                Colours.app_main,
                Colours.app_main_500
              ],
              onPressed: _loginEnabled ? _login : null,
            ),
          ],
        )
    );
  }

}
