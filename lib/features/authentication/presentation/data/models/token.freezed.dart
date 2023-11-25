// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenModels _$TokenModelsFromJson(Map<String, dynamic> json) {
  return _TokenModels.fromJson(json);
}

/// @nodoc
mixin _$TokenModels {
  String get message => throw _privateConstructorUsedError;
  String get accesToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenModelsCopyWith<TokenModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenModelsCopyWith<$Res> {
  factory $TokenModelsCopyWith(
          TokenModels value, $Res Function(TokenModels) then) =
      _$TokenModelsCopyWithImpl<$Res, TokenModels>;
  @useResult
  $Res call({String message, String accesToken, String tokenType});
}

/// @nodoc
class _$TokenModelsCopyWithImpl<$Res, $Val extends TokenModels>
    implements $TokenModelsCopyWith<$Res> {
  _$TokenModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accesToken = null,
    Object? tokenType = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accesToken: null == accesToken
          ? _value.accesToken
          : accesToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenModelsImplCopyWith<$Res>
    implements $TokenModelsCopyWith<$Res> {
  factory _$$TokenModelsImplCopyWith(
          _$TokenModelsImpl value, $Res Function(_$TokenModelsImpl) then) =
      __$$TokenModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String accesToken, String tokenType});
}

/// @nodoc
class __$$TokenModelsImplCopyWithImpl<$Res>
    extends _$TokenModelsCopyWithImpl<$Res, _$TokenModelsImpl>
    implements _$$TokenModelsImplCopyWith<$Res> {
  __$$TokenModelsImplCopyWithImpl(
      _$TokenModelsImpl _value, $Res Function(_$TokenModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? accesToken = null,
    Object? tokenType = null,
  }) {
    return _then(_$TokenModelsImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      accesToken: null == accesToken
          ? _value.accesToken
          : accesToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenModelsImpl implements _TokenModels {
  _$TokenModelsImpl(
      {required this.message,
      required this.accesToken,
      required this.tokenType});

  factory _$TokenModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenModelsImplFromJson(json);

  @override
  final String message;
  @override
  final String accesToken;
  @override
  final String tokenType;

  @override
  String toString() {
    return 'TokenModels(message: $message, accesToken: $accesToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenModelsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.accesToken, accesToken) ||
                other.accesToken == accesToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, accesToken, tokenType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenModelsImplCopyWith<_$TokenModelsImpl> get copyWith =>
      __$$TokenModelsImplCopyWithImpl<_$TokenModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenModelsImplToJson(
      this,
    );
  }
}

abstract class _TokenModels implements TokenModels {
  factory _TokenModels(
      {required final String message,
      required final String accesToken,
      required final String tokenType}) = _$TokenModelsImpl;

  factory _TokenModels.fromJson(Map<String, dynamic> json) =
      _$TokenModelsImpl.fromJson;

  @override
  String get message;
  @override
  String get accesToken;
  @override
  String get tokenType;
  @override
  @JsonKey(ignore: true)
  _$$TokenModelsImplCopyWith<_$TokenModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
