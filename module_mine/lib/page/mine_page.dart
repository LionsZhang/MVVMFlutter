
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:library_base/constant/constant.dart';
import 'package:library_base/generated/l10n.dart';
import 'package:library_base/global/rt_account.dart';
import 'package:library_base/model/account.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/provider_widget.dart';
import 'package:library_base/net/apis.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/gaps.dart';
import 'package:library_base/res/styles.dart';
import 'package:library_base/router/routers.dart';
import 'package:library_base/utils/path_util.dart';
import 'package:library_base/utils/toast_util.dart';
import 'package:library_base/widget/clickbar/mine_clickbar.dart';
import 'package:library_base/widget/common_scroll_view.dart';
import 'package:library_base/widget/dialog/dialog_util.dart';
import 'package:library_base/widget/image/local_image.dart';
import 'package:module_mine/viewmodel/setting_model.dart';
import 'package:module_mine/widget/mine_appbar.dart';
import 'package:path_provider/path_provider.dart';

class MinePage extends StatefulWidget {

  const MinePage({
    Key? key,
  }) : super(key : key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> with BasePageMixin<MinePage>, AutomaticKeepAliveClientMixin<MinePage>, SingleTickerProviderStateMixin {

  @override
  bool get wantKeepAlive => true;

  late SettingModel _settingModel;

  @override
  void initState() {
    super.initState();
    initViewModel();
  }

  void initViewModel() {
    _settingModel = SettingModel();
    _settingModel.listenEvent();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _logout() {
    DialogUtil.showCupertinoAlertDialog(context,
        title: S.of(context).logout,
        content: S.of(context).logoutConfirm,
        cancel: S.of(context).cancel,
        confirm: S.of(context).confirm,
        cancelPressed: () => Navigator.of(context).pop(),
        confirmPressed: () {
          Navigator.of(context).pop();
          RTAccount.instance()!.logout();
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        backgroundColor: Colours.white,
        body: ProviderWidget<SettingModel>(
            model: _settingModel,
            builder: (context, model, child) {
              Account? account = RTAccount.instance()!.getActiveAccount();
              return CommonScrollView(
                  padding: const EdgeInsets.only(left: 30,right:30,top: 80,bottom: 60),
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("当前登录用户: whop1",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                height: 1.2,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Text("当前登录仓库: 真实仓库 (不要编辑)",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                height: 1.2,
                              )),
                        ],
                      ),
                    ),
                   Gaps.vGap200,
//
                   Container(// RTAccount.instance().isLogin() ?
                     margin: EdgeInsets.symmetric(horizontal: 12),
                     decoration: BoxDecoration(
                       color: Colours.black_dark ,
                       borderRadius: BorderRadius.all(Radius.circular(30.0)),
                       boxShadow: BoxShadows.normalBoxShadow,
                     ),
                     child: FlatButton(
                         onPressed: () => _logout(),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
                         padding: EdgeInsets.all(0.0),
                         child: Container(
                             alignment: Alignment.center,
                             height: 30.0,
                             width: double.infinity,
                             child: Text(S.of(context).logout,
                               style: TextStyle(
                                 color: Colours.white,
                                 fontSize: 16.0,
                                 height: 1.2,
                               ),
                               maxLines: 1,
                               overflow: TextOverflow.ellipsis,
                             )
                         )
                     ),
                   )
                  ]
              );
            }
        )
    );
  }
}
