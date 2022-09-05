import 'package:library_base/global/rt_account.dart';
import 'package:library_base/model/account.dart';
import 'package:library_base/mvvm/view_state_model.dart';
import 'package:library_base/net/apis.dart';
import 'package:library_base/net/dio_util.dart';
import 'package:library_base/utils/log_util.dart';

class LoginModel extends ViewStateModel {
  AccountEntity? loginResult;

  LoginModel();

  Future login(final account, password, nonce) {
    Map<String, dynamic> params = {
      'account': account,
      'password': password,
      'warehouseId': ""
    };

    setBusy();

    return DioUtil.getInstance()!.requestNetwork(Apis.URL_LOGIN, "post",
        data: params, cancelToken: cancelToken, onSuccess: (dynamic data) {
      LogUtil.e(data);
      loginResult = AccountEntity.fromJson(data);
      loginResult?.data?.account=account;
      loginResult?.data?.psw=password;
      RTAccount.instance()?.setActiveAccount(loginResult?.data);
      RTAccount.instance()?.saveAccount();

      setSuccess();
      // Event.eventBus.fire(UserEvent(loginResult!.account_info, UserEventState.login));
    }, onError: (errno, msg) {
      loginResult = null;
      setError(errno!, message: msg);
    });
  }
}
