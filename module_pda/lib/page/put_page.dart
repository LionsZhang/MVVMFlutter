

import 'package:flutter/material.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/provider_widget.dart';
import 'package:module_pda/viewmodel/put_view_model.dart';



class PutPage extends StatefulWidget {

  PutPage({
    Key? key,
  }) : super(key: key);

  @override
  _PutPageState createState() => _PutPageState();
}

class _PutPageState extends State<PutPage>with BasePageMixin<PutPage>, AutomaticKeepAliveClientMixin<PutPage>, SingleTickerProviderStateMixin{

  @override
  bool get wantKeepAlive => true;


  late PutViewModel _putViewModel;

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
    _putViewModel = PutViewModel();
    _putViewModel.getHomeAll();
  }



  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        body: ProviderWidget<PutViewModel>(
            model: _putViewModel,
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