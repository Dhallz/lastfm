import 'package:dartz/dartz.dart';
import 'value_failure.dart';

Either<ValueFailure<String>, String> validateEmpty(
  String input, {
  String message = 'empty',
}) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(
      failedMessage: message,
    ));
  }
}

Either<ValueFailure<String>, String> validateOnlySpecialChar(
  String input, {
  String message = 'onlySpecialChar',
}) {
  if (input.isEmpty) {
    return right(input);
  } else {
    if (!input.contains(RegExp(r'/[A-Za-z0-9]/'))) {
      return right(input);
    } else {
      return left(
        ValueFailure.onlySpecialChar(failedMessage: message),
      );
    }
  }
}
