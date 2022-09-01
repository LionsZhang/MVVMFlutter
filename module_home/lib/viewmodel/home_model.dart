

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:library_base/mvvm/base_page.dart';
import 'package:library_base/mvvm/view_state.dart';
import 'package:library_base/mvvm/view_state_model.dart';
import 'package:library_base/net/apis.dart';
import 'package:library_base/net/dio_util.dart';

class HomeModel extends ViewStateModel {

  GlobalKey<BasePageMixin> communityPageKey = GlobalKey<BasePageMixin>();
  GlobalKey<BasePageMixin> articlePageKey = GlobalKey<BasePageMixin>();

  StreamSubscription? quoteSubscription;

  HomeModel() : super(viewState: ViewState.first);



  Future getHomeAll() async {

    await Future.wait<dynamic>([
      getHome(Apis.COIN_BITCOIN),
      getHome(Apis.COIN_ETHEREUM),
    ]);

    setIdle();
  }

  Future getHomeAllWithChild() async {

    await Future.wait<dynamic>([
      getHome(Apis.COIN_BITCOIN),
      getHome(Apis.COIN_ETHEREUM),

      communityPageKey.currentState!.refresh(slient: true),
      articlePageKey.currentState!.refresh(slient: true),
    ]);

    setIdle();
  }

  Future getHome(chain) {
    Map<String, dynamic> params = {
      'chain': chain,
    };

    return DioUtil.getInstance()!.requestNetwork(Apis.URL_GET_HOME, "get", params: params,
        cancelToken: cancelToken,
        onSuccess: (dynamic data) {
          // if (chain == Apis.COIN_BITCOIN) {
          //   btcUsdPair = QuotePair.fromJson(data);
          //   btcUsdPair!.coin_code = 'BTC';
          //   btcUsdPair!.chain = Apis.COIN_BITCOIN;
          //
          // } else if (chain == Apis.COIN_ETHEREUM) {
          //   ethUsdPair = QuotePair.fromJson(data);
          //   ethUsdPair!.coin_code = 'ETH';
          //   ethUsdPair!.chain = Apis.COIN_ETHEREUM;
          // }
        },
        onError: (errno, msg) {
          //mock
          // if (chain == Apis.COIN_BITCOIN) {
          //   btcUsdPair = mock_btcUsdPair;
          //
          // } else if (chain == Apis.COIN_ETHEREUM) {
          //   ethUsdPair = mock_ethUsdPair;
          // }
        });

  }

  @override
  void dispose() {
    quoteSubscription?.cancel();
    super.dispose();
  }
}
