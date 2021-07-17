import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getx;
import 'package:lastfm/infrastructure/environment/env.dart';

import 'rest_api_logger.dart';

class RestApiInterceptor extends RestApiLogger {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'api_key': getx.Get.find<Env>().apiKey,
      "format": "json",
    });
    debugPrint(options.uri.path);
    return super.onRequest(options, handler);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
