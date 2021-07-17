import 'package:get/get.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_client.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_interceptor.dart';
import 'package:lastfm/infrastructure/environment/env.dart';

Future<void> initServices() async {
  print('starting services ...');

  Get.lazyPut(() => Env());
  Get.lazyPut(() => RestApiClient(
        restApiInterceptor: Get.put(RestApiInterceptor()),
      ));

  print('all services started...');
}
