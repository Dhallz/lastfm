import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
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

/// Make the query on [queryResponse] then do something [onSucces].
/// [HttpErrors] are auto handled.
Future<Either<RestApiError, T>> handlingGetResponse<T>({
  required Future<Response<Map<String, dynamic>>> query,
  // Map<String, dynamic>? queryParameters,
  required T Function(Response<Map<String, dynamic>> success) onSucces,
  required RestApiError Function(RestApiError error) onError,
}) async {
  try {
    return await query.then((response) {
      return right(onSucces(response));
    });
  } on DioError catch (err) {
    return left(onError(err.handlingHttpErrors));
  } catch (e) {
    return left(RestApiError(message: 'Bad value from API : ${e.toString()}'));
  }
}

extension OnDioError on DioError {
  RestApiError get handlingHttpErrors {
    return RestApiError(
        error: response?.data['error'], message: response?.data['message']);
  }
}
