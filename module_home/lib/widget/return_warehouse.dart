import 'package:flutter/material.dart';
import 'package:library_base/constant/constant.dart';
import 'package:library_base/event/event.dart';
import 'package:library_base/event/main_jump_event.dart';
import 'package:library_base/generated/l10n.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/gaps.dart';
import 'package:library_base/res/styles.dart';
import 'package:library_base/router/routers.dart';
import 'package:library_base/utils/image_util.dart';
import 'package:module_home/home_router.dart';

class ReturnWarehouse extends StatefulWidget {
  final VoidCallback? onPressed;

  const ReturnWarehouse({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  _ReturnWarehouseState createState() => _ReturnWarehouseState();
}

class _ReturnWarehouseState extends State<ReturnWarehouse>
    with BasePageMixin<ReturnWarehouse> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? package = HomeRouter.isRunModule ? null : Constant.moduleHome;

    return Container(
        margin: EdgeInsets.fromLTRB(12, 8, 12, 8),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(8.0), //圆角
          color: Colours.white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 20,
                height: 20,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: Colours.item_blue),
              ),
              SizedBox(
                width: 10,
              ),
              Text("退货入库",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                    height: 1.2,
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => Routers.navigateTo(context, Routers.takePage),
                  child: Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(16),
                        color: Colours.dark_app_main),
                    child: Text("收货",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          height: 1.2,
                        )),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => Routers.navigateTo(context, Routers.pickPage),
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(16),
                          color: Colours.dark_app_main),
                      child: Text("分拣",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            height: 1.2,
                          )),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => Routers.navigateTo(context, Routers.expressDeliveryPage),
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(16),
                          color: Colours.dark_app_main),
                      child: Text("新建快递单",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            height: 1.2,
                          )),
                    ),
                  )),
              SizedBox(
                width: 15,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ]));
  }
}
