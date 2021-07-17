// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cover.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cover _$CoverFromJson(Map<String, dynamic> json) {
  return _Cover.fromJson(json);
}

/// @nodoc
class _$CoverTearOff {
  const _$CoverTearOff();

  _Cover call(
      {@JsonKey(name: '#text') String url = '',
      @JsonKey(name: 'size') String size = ''}) {
    return _Cover(
      url: url,
      size: size,
    );
  }

  Cover fromJson(Map<String, Object> json) {
    return Cover.fromJson(json);
  }
}

/// @nodoc
const $Cover = _$CoverTearOff();

/// @nodoc
mixin _$Cover {
  @JsonKey(name: '#text')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoverCopyWith<Cover> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoverCopyWith<$Res> {
  factory $CoverCopyWith(Cover value, $Res Function(Cover) then) =
      _$CoverCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '#text') String url, @JsonKey(name: 'size') String size});
}

/// @nodoc
class _$CoverCopyWithImpl<$Res> implements $CoverCopyWith<$Res> {
  _$CoverCopyWithImpl(this._value, this._then);

  final Cover _value;
  // ignore: unused_field
  final $Res Function(Cover) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CoverCopyWith<$Res> implements $CoverCopyWith<$Res> {
  factory _$CoverCopyWith(_Cover value, $Res Function(_Cover) then) =
      __$CoverCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '#text') String url, @JsonKey(name: 'size') String size});
}

/// @nodoc
class __$CoverCopyWithImpl<$Res> extends _$CoverCopyWithImpl<$Res>
    implements _$CoverCopyWith<$Res> {
  __$CoverCopyWithImpl(_Cover _value, $Res Function(_Cover) _then)
      : super(_value, (v) => _then(v as _Cover));

  @override
  _Cover get _value => super._value as _Cover;

  @override
  $Res call({
    Object? url = freezed,
    Object? size = freezed,
  }) {
    return _then(_Cover(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cover implements _Cover {
  const _$_Cover(
      {@JsonKey(name: '#text') this.url = '',
      @JsonKey(name: 'size') this.size = ''});

  factory _$_Cover.fromJson(Map<String, dynamic> json) =>
      _$_$_CoverFromJson(json);

  @override
  @JsonKey(name: '#text')
  final String url;
  @override
  @JsonKey(name: 'size')
  final String size;

  @override
  String toString() {
    return 'Cover(url: $url, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cover &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$CoverCopyWith<_Cover> get copyWith =>
      __$CoverCopyWithImpl<_Cover>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CoverToJson(this);
  }
}

abstract class _Cover implements Cover {
  const factory _Cover(
      {@JsonKey(name: '#text') String url,
      @JsonKey(name: 'size') String size}) = _$_Cover;

  factory _Cover.fromJson(Map<String, dynamic> json) = _$_Cover.fromJson;

  @override
  @JsonKey(name: '#text')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'size')
  String get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoverCopyWith<_Cover> get copyWith => throw _privateConstructorUsedError;
}
