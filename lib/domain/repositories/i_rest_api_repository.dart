import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;
import 'package:lastfm/infrastructure/api/rest/rest_api_error.dart';

import '../../../infrastructure/api/rest/rest_api_client.dart';

abstract class IRestApiRepository {
  final RestApiClient restApi;
  @protected
  final String _method;

  String get method => _method;

  IRestApiRepository({
    required this.restApi,
    required String method,
  }) : _method = method;
}

/// Make the query on [query] then return either [onSucces] or [onError].
/// [HttpErrors] are auto handled.
Future<Either<RestApiError, T>> handlingDioResponse<T>({
  required Future<Response<Map<String, dynamic>>> query,
  required T Function(Response<Map<String, dynamic>> success) onSucces,
  required RestApiError Function(RestApiError error) onError,
}) async {
  try {
    return await query.then((response) {
      return right(onSucces(response));
    });
  } on DioError catch (err) {
    errorSnackBar(
      title: 'Oups',
      code: err.handlingHttpErrors.error,
      message: err.handlingHttpErrors.message,
    );
    return left(onError(err.handlingHttpErrors));
  } catch (e) {
    debugPrint(e.toString());
    RestApiError err = RestApiError(
        message: 'Bad value either from API or from Model: ${e.toString()}');
    return left(err);
  }
}

void errorSnackBar({
  String title = 'Information',
  String? code,
  String? message,
}) {
  getx.Get.snackbar(
    title,
    '${code ?? ''}\n${message ?? ''}',
    borderColor: Colors.red,
    borderWidth: 1,
    icon: Icon(Icons.error_rounded),
    snackPosition: getx.SnackPosition.TOP,
    margin: const EdgeInsets.all(8),
    duration: const Duration(seconds: 1),
  );
}

extension OnDioError on DioError {
  RestApiError get handlingHttpErrors {
    return RestApiError(
        error: response?.data['error'], message: response?.data['message']);
  }
}
