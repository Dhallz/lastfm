import 'package:freezed_annotation/freezed_annotation.dart';

part 'cover.freezed.dart';
part 'cover.g.dart';

@freezed
class Cover with _$Cover {
  const factory Cover({
    @Default('') @JsonKey(name: '#text') String url,
    @Default('') @JsonKey(name: 'size') String size,
  }) = _Cover;

  factory Cover.fromJson(Map<String, dynamic> json) => _$CoverFromJson(json);
}
