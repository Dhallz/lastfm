import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfm/domain/entities/album.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<Album>[]) List<Album> albums,
  }) = _HomeState;
}
