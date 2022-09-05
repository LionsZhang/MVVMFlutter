import 'package:flutter/material.dart';
import 'package:library_base/constant/constant.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/provider_widget.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/router/routers.dart';
import 'package:library_base/utils/image_util.dart';
import 'package:library_base/utils/object_util.dart';
import 'package:library_base/widget/textfield/oder_text_field.dart';
import 'package:module_pda/pda_router.dart';
import 'package:module_pda/viewmodel/take_view_model.dart';

///UPC信息修改页面
class UpcPage extends StatefulWidget {
  UpcPage({
    Key? key,
  }) : super(key: key);

  @override
  _UpcPageState createState() => _UpcPageState();
}

class _UpcPageState extends State<UpcPage>
    with
        BasePageMixin<UpcPage>,
        AutomaticKeepAliveClientMixin<UpcPage>,
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
                              Text("维护UPC信息-UPC列表",
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
                                height: 2,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          width: double.infinity,
                        ),
                        SizedBox(
                          height:400,
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
