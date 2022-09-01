
import 'package:flutter/material.dart';
import 'package:library_base/router/i_router.dart';
import 'package:library_base/router/page_builder.dart';
import 'package:library_base/router/routers.dart';
import 'package:module_home/page/home_page.dart';

class HomeRouter implements IRouter{

  static bool isRunModule = false;

  @override
  List<PageBuilder> getPageBuilders() {
    return [
      PageBuilder(Routers.homePage, (params) {
        Key? key = params?.getObj('key');
        return HomePage(key: key);
      }),
    ];
  }

}