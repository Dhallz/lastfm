import 'package:dartz/dartz.dart';
import 'package:lastfm/domain/entities/album.dart';
import 'package:lastfm/domain/entities/album_details.dart';
import 'package:lastfm/infrastructure/api/rest/rest_api_error.dart';

abstract class IAlbumRepository {
  Future<Either<RestApiError, List<Album>>> searchAlbumsByName({
    required String name,
  });

  Future<Either<RestApiError, AlbumDetails>> getAlbumDetailsById({
    required String mbid,
  });

  Future<Either<RestApiError, AlbumDetails>> getAlbumDetailsByNameAndArtist({
    required String name,
    required String artist,
  });
}
