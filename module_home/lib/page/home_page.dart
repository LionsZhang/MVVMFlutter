

import 'package:flutter/material.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/provider_widget.dart';
import 'package:library_base/res/colors.dart';
import 'package:module_home/viewmodel/home_model.dart';
import 'package:module_home/widget/business.dart';
import 'package:module_home/widget/fba.dart';
import 'package:module_home/widget/return_warehouse.dart';


class HomePage extends StatefulWidget {

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with BasePageMixin<HomePage>, AutomaticKeepAliveClientMixin<HomePage>, SingleTickerProviderStateMixin{

  @override
  bool get wantKeepAlive => true;


  late HomeModel _homeModel;

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
    _homeModel = HomeModel();
    _homeModel.getHomeAll();
  }



  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: ProviderWidget<HomeModel>(
            model: _homeModel,
            builder: (context, model, child) {
              return Scaffold(
                body: Scrollbar(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 60,bottom: 30),
                    child:Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("仓库:真实仓库(不要编辑)   用户:whop1",style:TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            height: 1.2,
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          ReturnWarehouse(),
                          Fba(),
                          Business(),
                        ],
                      ),
                      width: double.infinity,
                    ),

                  ),
                ),
              );
            }
        )
    );
  }

}