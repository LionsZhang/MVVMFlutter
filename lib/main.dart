
import 'package:library_base/constant/app_config.dart';
import 'package:library_base/net/apis.dart';

import 'init/app_init.dart';

void main() {
  print("main0");
  AppConfig.env = EnvModel(
      envMode: EnvEmum.test,
      apiUrl: Apis.BASE_URL_TEST,
      articleApiUrl: Apis.BASE_URL_ARITCLE_TEST,
      wsUrl: Apis.WEB_SOCKET_URL_TEST
  );

  AppInit.run();
}