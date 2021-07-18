import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfm/domain/entities/album_details.dart';

part 'album_details_state.freezed.dart';

@freezed
class AlbumDetailsState with _$AlbumDetailsState {
  const factory AlbumDetailsState({
    @Default(AlbumDetails()) AlbumDetails albumDetails,
  }) = _AlbumDetailsState;
}
