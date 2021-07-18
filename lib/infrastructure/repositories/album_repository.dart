import 'package:dartz/dartz.dart';
import 'package:get/get.dart' as getx;
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/domain/entities/album_details.dart';
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
  Future<Either<RestApiError, AlbumDetails>> getAlbumDetailsById(
      {required String mbid}) async {
    return await handlingDioResponse<AlbumDetails>(
      query: restApi.client.request('', queryParameters: {
        'method': '$method.getinfo',
        'mbid': mbid,
      }),
      onSucces: (success) => AlbumDetails.fromJson(success.data?['album']),
      onError: (error) => error,
    );
  }

  @override
  Future<Either<RestApiError, List<Album>>> searchAlbumsByName(
      {required String name}) async {
    return await handlingDioResponse<List<Album>>(
      query: restApi.client.request('', queryParameters: {
        'method': '$method.search',
        'album': name,
      }),
      onSucces: (success) => success.data?['results']['albummatches']['album']
          .map<Album>((e) => Album.fromJson(e))
          .toList(),
      onError: (error) => error,
    );
  }

  @override
  Future<Either<RestApiError, AlbumDetails>> getAlbumDetailsByNameAndArtist(
      {required String name, required String artist}) async {
    return await handlingDioResponse<AlbumDetails>(
      query: restApi.client.request('', queryParameters: {
        'method': '$method.getinfo',
        'album': name,
        'artist': artist,
      }),
      onSucces: (success) => AlbumDetails.fromJson(success.data?['album']),
      onError: (error) => error,
    );
  }
}
