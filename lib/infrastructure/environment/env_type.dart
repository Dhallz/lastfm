import 'package:freezed_annotation/freezed_annotation.dart';

part 'env_type.freezed.dart';

@freezed
class EnvType with _$EnvType {
  const factory EnvType.dev() = Dev;
  const factory EnvType.prod() = Prod;
}
