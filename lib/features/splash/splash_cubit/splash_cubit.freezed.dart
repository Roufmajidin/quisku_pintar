// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  bool get authenticated => throw _privateConstructorUsedError;
  String? get appVersion => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool authenticated, String? appVersion) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool authenticated, String? appVersion)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool authenticated, String? appVersion)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
  @useResult
  $Res call({bool authenticated, String? appVersion});
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticated = null,
    Object? appVersion = freezed,
  }) {
    return _then(_value.copyWith(
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SplashLoadedStateImplCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$$SplashLoadedStateImplCopyWith(_$SplashLoadedStateImpl value,
          $Res Function(_$SplashLoadedStateImpl) then) =
      __$$SplashLoadedStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool authenticated, String? appVersion});
}

/// @nodoc
class __$$SplashLoadedStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashLoadedStateImpl>
    implements _$$SplashLoadedStateImplCopyWith<$Res> {
  __$$SplashLoadedStateImplCopyWithImpl(_$SplashLoadedStateImpl _value,
      $Res Function(_$SplashLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticated = null,
    Object? appVersion = freezed,
  }) {
    return _then(_$SplashLoadedStateImpl(
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SplashLoadedStateImpl implements SplashLoadedState {
  const _$SplashLoadedStateImpl({required this.authenticated, this.appVersion});

  @override
  final bool authenticated;
  @override
  final String? appVersion;

  @override
  String toString() {
    return 'SplashState.loaded(authenticated: $authenticated, appVersion: $appVersion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashLoadedStateImpl &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticated, appVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashLoadedStateImplCopyWith<_$SplashLoadedStateImpl> get copyWith =>
      __$$SplashLoadedStateImplCopyWithImpl<_$SplashLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool authenticated, String? appVersion) loaded,
  }) {
    return loaded(authenticated, appVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool authenticated, String? appVersion)? loaded,
  }) {
    return loaded?.call(authenticated, appVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool authenticated, String? appVersion)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(authenticated, appVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SplashLoadedState implements SplashState {
  const factory SplashLoadedState(
      {required final bool authenticated,
      final String? appVersion}) = _$SplashLoadedStateImpl;

  @override
  bool get authenticated;
  @override
  String? get appVersion;
  @override
  @JsonKey(ignore: true)
  _$$SplashLoadedStateImplCopyWith<_$SplashLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
