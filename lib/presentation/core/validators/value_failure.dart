import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({
    required T failedMessage,
  }) = Empty<T>;
  const factory ValueFailure.onlySpecialChar({
    required T failedMessage,
  }) = DifferentInput<T>;
}
