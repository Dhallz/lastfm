import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_interceptor.dart';
import 'package:lastfm/infrastructure/environment/env.dart';

class RestApiClient {
  final Dio client = Dio();

  RestApiClient({
    required RestApiInterceptor restApiInterceptor,
  }) {
    client.options.baseUrl = Get.find<Env>().apiBaseUrl;
    client.options.receiveTimeout = 15000;
    client.options.connectTimeout = 5000;
    client.interceptors.add(restApiInterceptor);
  }
}
