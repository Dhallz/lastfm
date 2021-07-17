import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' as getx;
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/domain/entities/cover.dart';
import 'package:lastfm/domain/repositories/i_album_repository.dart';
import 'package:lastfm/domain/repositories/i_rest_api_repository.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_client.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_error.dart';

class AlbumRepository extends IRestApiRepository implements IAlbumRepository {
  AlbumRepository()
      : super(
          method: 'album',
          restApi: getx.Get.find<RestApiClient>(),
        );

  @override
  Future<Either<RestApiError, Album>> getAlbumById(
      {required String mbid}) async {
    return await handlingGetResponse<Album>(
      query: restApi.client.request('', queryParameters: {
        "method": "$method.getinfo",
        "mbid": mbid,
      }),
      onSucces: (success) => Album.fromJson(success.data?['album']),
      onError: (error) => error,
    );
  }

  @override
  Future<Either<RestApiError, List<Album>>> searchAlbumsByName(
      {required String name}) async {
    return await handlingGetResponse<List<Album>>(
      query: restApi.client.request('', queryParameters: {
        "method": "$method.search",
        "album": name,
      }),
      onSucces: (success) => success.data?['results']['albummatches']['album']
          .map<Album>((e) => Album.fromJson(e))
          .toList(),
      onError: (error) => error,
    );
  }
}
