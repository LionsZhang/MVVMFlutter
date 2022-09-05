import 'package:flutter/material.dart';
import 'package:library_base/constant/constant.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/provider_widget.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/router/routers.dart';
import 'package:library_base/utils/image_util.dart';
import 'package:library_base/utils/object_util.dart';
import 'package:library_base/widget/textfield/commit_text_field.dart';
import 'package:library_base/widget/textfield/oder_text_field.dart';
import 'package:module_pda/pda_router.dart';
import 'package:module_pda/viewmodel/take_view_model.dart';

///UPC信息修改页面
class ExpressDeliveryPage extends StatefulWidget {
  ExpressDeliveryPage({
    Key? key,
  }) : super(key: key);

  @override
  _ExpressDeliveryPageState createState() => _ExpressDeliveryPageState();
}

class _ExpressDeliveryPageState extends State<ExpressDeliveryPage>
    with
        BasePageMixin<ExpressDeliveryPage>,
        AutomaticKeepAliveClientMixin<ExpressDeliveryPage>,
        SingleTickerProviderStateMixin {
  final TextEditingController _phoneController = TextEditingController();
  final FocusNode _phoneNode = FocusNode();

  @override
  bool get wantKeepAlive => true;

  late TakeViewModel _takeViewModel;

  @override
  void initState() {
    super.initState();

    initViewModel();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void initViewModel() {
    _takeViewModel = TakeViewModel();
    _takeViewModel.getHomeAll();
  }

  void _checkInput() {
    setState(() {
      if (ObjectUtil.isEmpty(_phoneController.text) ||
          ObjectUtil.isEmpty(_phoneController.text)) {
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    String? package = PdaRouter.isRunModule ? null : Constant.modulePda;
    return Scaffold(
        body: ProviderWidget<TakeViewModel>(
            model: _takeViewModel,
            builder: (context, model, child) {
              return Scaffold(
                body: Scrollbar(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 60, bottom: 30),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("新建快递单-信息录入",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    height: 1.2,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                16),
                                        color: Colours.dark_app_main),
                                    child: Text("物流单号:",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: OderTextField(
                                        focusNode: _phoneNode,
                                        controller: _phoneController,
                                        onTextChanged: _checkInput,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadiusDirectional.circular(
                                            16),
                                        color: Colours.dark_app_main),
                                    child: Text("货位:",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: OderTextField(
                                        focusNode: _phoneNode,
                                        controller: _phoneController,
                                        onTextChanged: _checkInput,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadiusDirectional.circular(
                                            16),
                                        color: Colours.dark_app_main),
                                    child: Text("用户:",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: OderTextField(
                                        focusNode: _phoneNode,
                                        controller: _phoneController,
                                        onTextChanged: _checkInput,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadiusDirectional.circular(
                                            16),
                                        color: Colours.dark_app_main),
                                    child: Text("备注:",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                        )),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                      flex: 1,
                                        child: CommitTextField(
                                          focusNode: _phoneNode,
                                          controller: _phoneController,
                                          onTextChanged: _checkInput,
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          width: double.infinity,
                        ),
                        SizedBox(
                          height:100,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadiusDirectional.circular(15),
                                      color: Colours.dark_app_main),
                                  child: Text("返回",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        height: 1.2,
                                      )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () => Routers.navigateTo(
                                      context, Routers.putPage),
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadiusDirectional.circular(
                                            16),
                                        color: Colours.dark_app_main),
                                    child: Text("新增",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          height: 1.2,
                                        )),
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
