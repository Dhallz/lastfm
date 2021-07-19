import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class RestApiLogger extends Interceptor {
  Duration _computeTime = Duration();
  late Stopwatch stopwatch;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    stopwatch = Stopwatch()..start();
    print(
        'REQUEST[${options.method}] => PATH: ${options.path.isEmpty ? 'none' : 'options.path'}');

    _computeTime = _computeTime + stopwatch.elapsed;
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint('COMPUTE TIME : ${stopwatch.elapsed}');
    _computeTime = Duration();
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        'REQUEST[${err.requestOptions.method}] => PATH: ${err.requestOptions.path.isEmpty ? 'none' : 'options.path'}');
    return super.onError(err, handler);
  }
}
