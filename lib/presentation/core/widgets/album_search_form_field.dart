import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lastfm/presentation/core/validators/value_validator.dart';

class AlbumSearchFormField extends TextFormField {
  final RxString input;
  final Function(String)? onFieldSubmitted;
  AlbumSearchFormField({
    required this.input,
    this.onFieldSubmitted,
  }) : super(
          initialValue: input.value,
          decoration: InputDecoration(hintText: 'Search albums ...'),
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onFieldSubmitted: onFieldSubmitted,
          validator: (value) =>
              validateEmpty(input.value).flatMap(validateOnlySpecialChar).fold(
                    (l) => l.failedMessage,
                    (_) => null,
                  ),
          onChanged: (value) => input.value = value,
        );
}
