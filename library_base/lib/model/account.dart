

import 'package:library_base/utils/object_util.dart';

class AccountEntity {

  String? code;
  Account? data;
  String? message;

  AccountEntity({
    this.code,
    this.data,
    this.message,
  });

  AccountEntity.fromJson(Map<String, dynamic> jsonMap) {
    code = jsonMap['code'];
    message = jsonMap['message'];

    if (ObjectUtil.isNotEmpty(jsonMap['data'])) {
      data = Account.fromJson(jsonMap['data']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['code'] = this.code;
    jsonMap['message'] = this.message;

    if (this.data != null) {
      jsonMap['data'] = this.data?.toJson();
    }

    return jsonMap;
  }
}


class Account {
  String? token;
  String? account;
  String? psw;
  bool? minBalanceNotice;
  bool? selectWarehouse;



  Account({
    this.token,
    this.minBalanceNotice,
    this.selectWarehouse,
    this.account,
    this.psw,

  });

  Account.fromJson(Map<String, dynamic> jsonMap) {
    token = jsonMap['token'] ?? '';
    minBalanceNotice = jsonMap['minBalanceNotice'] ?? false;
    selectWarehouse = jsonMap['selectWarehouse'] ?? false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['token'] = this.token;
    jsonMap['minBalanceNotice'] = this.minBalanceNotice;
    jsonMap['selectWarehouse'] = this.selectWarehouse;
    jsonMap['account'] = this.account;
    jsonMap['psw'] = this.psw;
    return jsonMap;
  }


  Account.fromLocalJson(Map<String, dynamic> jsonMap) {
    token = jsonMap['token'];
    minBalanceNotice = jsonMap['minBalanceNotice'];
    selectWarehouse = jsonMap['selectWarehouse'];
    account = jsonMap['account'];
    psw = jsonMap['psw'];
  }

  Map<String, dynamic> toLocalJson() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['selectWarehouse'] = this.selectWarehouse;
    jsonMap['token'] = this.token;
    jsonMap['minBalanceNotice'] = this.minBalanceNotice;
    jsonMap['account'] = this.account;
    jsonMap['psw'] = this.psw;
    return jsonMap;
  }
}

