import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:library_base/constant/constant.dart';
import 'package:library_base/generated/l10n.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/provider_widget.dart';
import 'package:library_base/res/colors.dart';
import 'package:library_base/res/dimens.dart';
import 'package:library_base/router/parameters.dart';
import 'package:library_base/router/routers.dart';
import 'package:library_base/utils/log_util.dart';
import 'package:library_base/widget/double_tap_back_exit_app.dart';
import 'package:library_base/widget/image/local_image.dart';

import '../viewmodel/main_model.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver, BasePageMixin<MainPage> {
  StreamSubscription? _sub;

  static const double _imageSize = 20.0;

  List<GlobalKey<BasePageMixin>>? _keyList;
  late List<String> _appBarTitles;
  late List<Widget> _pageList;
  List<BottomNavigationBarItem>? _bottomBarItemList;

  late MainModel _mainModel;

  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    initView();
    initViewModel();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {


      }
    });
  }





  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      LogUtil.v('应用进入前台 resumed');
    } else if (state == AppLifecycleState.paused) {
      LogUtil.v('应用进入后台 paused');
    } else if (state == AppLifecycleState.inactive) {
      LogUtil.v('应用进入非活动状态 inactive');
    } else if (state == AppLifecycleState.detached) {
      LogUtil.v('应用进入 detached 状态 detached');
    }
  }

  @override
  void dispose() {
    if (_sub != null) _sub!.cancel();
    _pageController.dispose();
    imageCache.clear();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void initView() {
    _appBarTitles = [S.current.home, S.current.mine];
    _keyList = [
      GlobalKey<BasePageMixin>(debugLabel: _appBarTitles[0]),
      GlobalKey<BasePageMixin>(debugLabel: _appBarTitles[1]),
    ];
    _pageList = [
      Routers.generatePage(context, Routers.homePage, parameters: Parameters()..putObj('key', _keyList![0]))!,
      Routers.generatePage(context, Routers.minePage, parameters: Parameters()..putObj('key', _keyList![1]))!
    ];
  }

  void initViewModel() {

    // if (Constant.isReleaseMode)

    _mainModel = MainModel();
    _mainModel.listenEvent(context, _pageController, _keyList);
    // _mainModel.initBugly();
  }

  List<BottomNavigationBarItem>? _buildBottomNavigationBarItem() {
    if (_bottomBarItemList == null) {
      List<List<Widget>> _tabImages = [
        [LocalImage('tab_home', gaplessPlayback: true, width: _imageSize, color: Colours.unselected_item_color),
          LocalImage('tab_home', gaplessPlayback: true, width: _imageSize, color: Colours.selected_item_color)],
        [LocalImage('tab_mine', gaplessPlayback: true, width: _imageSize, color: Colours.unselected_item_color),
          LocalImage('tab_mine', gaplessPlayback: true, width: _imageSize, color: Colours.selected_item_color)]
      ];

      _bottomBarItemList = List.generate(_tabImages.length, (i) {
        return BottomNavigationBarItem(
          icon: Container(margin: EdgeInsets.only(bottom: 3), child: _tabImages[i][0]),
          activeIcon: Container(margin: EdgeInsets.only(bottom: 3), child: _tabImages[i][1]),
          label: _appBarTitles[i],
        );
      });
    }
    return _bottomBarItemList;
  }

  @override
  Widget build(BuildContext context) {

    precacheImage(AssetImage('assets/images/tab_home.png'), context);
    precacheImage(AssetImage('assets/images/tab_mine.png'), context);

    return ProviderWidget<MainModel>(
      model: _mainModel,
      builder: (context, model, child) {
        return DoubleTapBackExitApp(
          child: Scaffold(
              bottomNavigationBar: Theme(
                  data: ThemeData(
                      brightness: Brightness.light,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      primaryColor:Colours.dark_app_main,
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: Colours.white,
                    items: _buildBottomNavigationBarItem()!,
                    type: BottomNavigationBarType.fixed,
                    currentIndex: model.value,
                    elevation: 1.0,
                    iconSize: 20.0,
                    selectedFontSize: Dimens.font_sp14,
                    unselectedFontSize: Dimens.font_sp14,
                    selectedItemColor: Colours.selected_item_color,
                    unselectedItemColor: Colours.unselected_item_color,
                    onTap: (index) {
                      if (model.value == index) {
                        _keyList![index].currentState?.refresh();
                      } else {
                        _pageController.jumpToPage(index);
                      }
                    },
                  )
              ),

              // 使用PageView的原因参看 https://zhuanlan.zhihu.com/p/58582876
              body: PageView(
                physics: const NeverScrollableScrollPhysics(), // 禁止滑动
                controller: _pageController,
                onPageChanged: (int index) => _mainModel.value = index,
                children: _pageList,
              )
          ),
        );
      },
    );
  }

}
