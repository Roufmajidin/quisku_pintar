// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ujian_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UjianEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUjianUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUjianUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUjianUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUjian value) getUjianUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUjian value)? getUjianUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUjian value)? getUjianUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UjianEventCopyWith<$Res> {
  factory $UjianEventCopyWith(
          UjianEvent value, $Res Function(UjianEvent) then) =
      _$UjianEventCopyWithImpl<$Res, UjianEvent>;
}

/// @nodoc
class _$UjianEventCopyWithImpl<$Res, $Val extends UjianEvent>
    implements $UjianEventCopyWith<$Res> {
  _$UjianEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UjianEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UjianEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUjianUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUjianUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUjianUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUjian value) getUjianUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUjian value)? getUjianUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUjian value)? getUjianUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UjianEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetUjianImplCopyWith<$Res> {
  factory _$$GetUjianImplCopyWith(
          _$GetUjianImpl value, $Res Function(_$GetUjianImpl) then) =
      __$$GetUjianImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUjianImplCopyWithImpl<$Res>
    extends _$UjianEventCopyWithImpl<$Res, _$GetUjianImpl>
    implements _$$GetUjianImplCopyWith<$Res> {
  __$$GetUjianImplCopyWithImpl(
      _$GetUjianImpl _value, $Res Function(_$GetUjianImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUjianImpl implements GetUjian {
  const _$GetUjianImpl();

  @override
  String toString() {
    return 'UjianEvent.getUjianUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUjianImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getUjianUser,
  }) {
    return getUjianUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getUjianUser,
  }) {
    return getUjianUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getUjianUser,
    required TResult orElse(),
  }) {
    if (getUjianUser != null) {
      return getUjianUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetUjian value) getUjianUser,
  }) {
    return getUjianUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetUjian value)? getUjianUser,
  }) {
    return getUjianUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetUjian value)? getUjianUser,
    required TResult orElse(),
  }) {
    if (getUjianUser != null) {
      return getUjianUser(this);
    }
    return orElse();
  }
}

abstract class GetUjian implements UjianEvent {
  const factory GetUjian() = _$GetUjianImpl;
}

/// @nodoc
mixin _$UjianState {
  List<Ujian> get fetchUjian => throw _privateConstructorUsedError;
  FetchStatus get fetchUjianStatus => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Ujian> fetchUjian, FetchStatus fetchUjianStatus)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ujian> fetchUjian, FetchStatus fetchUjianStatus)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ujian> fetchUjian, FetchStatus fetchUjianStatus)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UjianStateCopyWith<UjianState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UjianStateCopyWith<$Res> {
  factory $UjianStateCopyWith(
          UjianState value, $Res Function(UjianState) then) =
      _$UjianStateCopyWithImpl<$Res, UjianState>;
  @useResult
  $Res call({List<Ujian> fetchUjian, FetchStatus fetchUjianStatus});
}

/// @nodoc
class _$UjianStateCopyWithImpl<$Res, $Val extends UjianState>
    implements $UjianStateCopyWith<$Res> {
  _$UjianStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchUjian = null,
    Object? fetchUjianStatus = null,
  }) {
    return _then(_value.copyWith(
      fetchUjian: null == fetchUjian
          ? _value.fetchUjian
          : fetchUjian // ignore: cast_nullable_to_non_nullable
              as List<Ujian>,
      fetchUjianStatus: null == fetchUjianStatus
          ? _value.fetchUjianStatus
          : fetchUjianStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $UjianStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ujian> fetchUjian, FetchStatus fetchUjianStatus});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UjianStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchUjian = null,
    Object? fetchUjianStatus = null,
  }) {
    return _then(_$InitialImpl(
      fetchUjian: null == fetchUjian
          ? _value._fetchUjian
          : fetchUjian // ignore: cast_nullable_to_non_nullable
              as List<Ujian>,
      fetchUjianStatus: null == fetchUjianStatus
          ? _value.fetchUjianStatus
          : fetchUjianStatus // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Ujian> fetchUjian = const <Ujian>[],
      this.fetchUjianStatus = FetchStatus.initial})
      : _fetchUjian = fetchUjian;

  final List<Ujian> _fetchUjian;
  @override
  @JsonKey()
  List<Ujian> get fetchUjian {
    if (_fetchUjian is EqualUnmodifiableListView) return _fetchUjian;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fetchUjian);
  }

  @override
  @JsonKey()
  final FetchStatus fetchUjianStatus;

  @override
  String toString() {
    return 'UjianState.initial(fetchUjian: $fetchUjian, fetchUjianStatus: $fetchUjianStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._fetchUjian, _fetchUjian) &&
            (identical(other.fetchUjianStatus, fetchUjianStatus) ||
                other.fetchUjianStatus == fetchUjianStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_fetchUjian), fetchUjianStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Ujian> fetchUjian, FetchStatus fetchUjianStatus)
        initial,
  }) {
    return initial(fetchUjian, fetchUjianStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Ujian> fetchUjian, FetchStatus fetchUjianStatus)?
        initial,
  }) {
    return initial?.call(fetchUjian, fetchUjianStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Ujian> fetchUjian, FetchStatus fetchUjianStatus)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(fetchUjian, fetchUjianStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UjianState {
  const factory _Initial(
      {final List<Ujian> fetchUjian,
      final FetchStatus fetchUjianStatus}) = _$InitialImpl;

  @override
  List<Ujian> get fetchUjian;
  @override
  FetchStatus get fetchUjianStatus;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
