import 'package:dartz/dartz.dart';
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_error.dart';

abstract class IAlbumRepository {
  Future<Either<RestApiError, List<Album>>> searchAlbumsByName({
    required String name,
  });

  Future<Either<RestApiError, Album>> getAlbumById({
    required String mbid,
  });
}
