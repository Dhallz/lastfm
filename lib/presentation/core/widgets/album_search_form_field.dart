import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lastfm/presentation/core/validators/value_validator.dart';

class AlbumSearchFormField extends TextFormField {
  final RxString input;
  AlbumSearchFormField({
    required this.input,
  }) : super(
          initialValue: input.value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) =>
              validateEmpty(input.value).flatMap(validateOnlySpecialChar).fold(
                    (l) => l.failedMessage,
                    (_) => null,
                  ),
          onChanged: (value) => input.value = value,
        );
}
