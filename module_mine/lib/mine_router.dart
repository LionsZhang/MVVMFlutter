
import 'package:flutter/material.dart';
import 'package:library_base/router/i_router.dart';
import 'package:library_base/router/page_builder.dart';
import 'package:library_base/router/routers.dart';
import 'package:module_mine/page/login_page.dart';
import 'package:module_mine/page/mine_page.dart';


class MineRouter implements IRouter{

  static bool isRunModule = false;

  @override
  List<PageBuilder> getPageBuilders() {
    return [
      PageBuilder(Routers.minePage, (params) {
        Key? key = params?.getObj('key');
        return MinePage(key: key);
      }),


      PageBuilder(Routers.loginPage, (params) {
        String? phone = params?.getString('phone');
        bool agreeChecked = params?.getBool('agreeChecked') ?? false;
        return LoginPage(phone: phone, agreeChecked: agreeChecked);
      }),

    ];
  }
}