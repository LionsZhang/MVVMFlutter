
import 'package:flutter/material.dart';
import 'package:library_base/router/i_router.dart';
import 'package:library_base/router/page_builder.dart';
import 'package:library_base/router/routers.dart';
import 'package:module_pda/page/put_page.dart';

class PdaRouter implements IRouter{

  static bool isRunModule = false;

  @override
  List<PageBuilder> getPageBuilders() {
    return [
      PageBuilder(Routers.putPage, (params) {
        Key? key = params?.getObj('key');
        return PutPage(key: key);
      }),
    ];
  }

}