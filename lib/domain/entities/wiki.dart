import 'package:freezed_annotation/freezed_annotation.dart';

part 'wiki.freezed.dart';
part 'wiki.g.dart';

@freezed
class Wiki with _$Wiki {
  const factory Wiki({
    @JsonKey(name: 'published')
    @Default('Missing published Date')
        String published,
    @JsonKey(name: 'summary') @Default('Missing summary') String summary,
  }) = _Wiki;

  factory Wiki.fromJson(Map<String, dynamic> json) => _$WikiFromJson(json);
}
