
import 'package:flutter/material.dart';
import 'package:library_base/router/i_router.dart';
import 'package:library_base/router/page_builder.dart';
import 'package:library_base/router/routers.dart';
import 'package:module_pda/page/express_delivery_page.dart';
import 'package:module_pda/page/pick_page.dart';
import 'package:module_pda/page/put_page.dart';
import 'package:module_pda/page/take_page.dart';
import 'package:module_pda/page/upc_page.dart';

class PdaRouter implements IRouter{

  static bool isRunModule = false;

  @override
  List<PageBuilder> getPageBuilders() {
    return [
      PageBuilder(Routers.putPage, (params) {
        Key? key = params?.getObj('key');
        return PutPage(key: key);
      }),
      PageBuilder(Routers.pickPage, (params) {
        Key? key = params?.getObj('key');
        return PickPage(key: key);
      }),
      PageBuilder(Routers.takePage, (params) {
        Key? key = params?.getObj('key');
        return TakePage(key: key);
      }),
      PageBuilder(Routers.upcPage, (params) {
        Key? key = params?.getObj('key');
        return UpcPage(key: key);
      }),
      PageBuilder(Routers.expressDeliveryPage, (params) {
        Key? key = params?.getObj('key');
        return ExpressDeliveryPage(key: key);
      }),
    ];
  }

}