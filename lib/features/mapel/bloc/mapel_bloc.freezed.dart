// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mapel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MapelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? mapelId) fetchPresensi,
    required TResult Function(String? messages) getMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? mapelId)? fetchPresensi,
    TResult? Function(String? messages)? getMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? mapelId)? fetchPresensi,
    TResult Function(String? messages)? getMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPresensi value) fetchPresensi,
    required TResult Function(GetMessages value) getMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPresensi value)? fetchPresensi,
    TResult? Function(GetMessages value)? getMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPresensi value)? fetchPresensi,
    TResult Function(GetMessages value)? getMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapelEventCopyWith<$Res> {
  factory $MapelEventCopyWith(
          MapelEvent value, $Res Function(MapelEvent) then) =
      _$MapelEventCopyWithImpl<$Res, MapelEvent>;
}

/// @nodoc
class _$MapelEventCopyWithImpl<$Res, $Val extends MapelEvent>
    implements $MapelEventCopyWith<$Res> {
  _$MapelEventCopyWithImpl(this._value, this._then);

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
    extends _$MapelEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MapelEvent.started()';
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
    required TResult Function(int? mapelId) fetchPresensi,
    required TResult Function(String? messages) getMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? mapelId)? fetchPresensi,
    TResult? Function(String? messages)? getMessage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? mapelId)? fetchPresensi,
    TResult Function(String? messages)? getMessage,
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
    required TResult Function(FetchPresensi value) fetchPresensi,
    required TResult Function(GetMessages value) getMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPresensi value)? fetchPresensi,
    TResult? Function(GetMessages value)? getMessage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPresensi value)? fetchPresensi,
    TResult Function(GetMessages value)? getMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MapelEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchPresensiImplCopyWith<$Res> {
  factory _$$FetchPresensiImplCopyWith(
          _$FetchPresensiImpl value, $Res Function(_$FetchPresensiImpl) then) =
      __$$FetchPresensiImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? mapelId});
}

/// @nodoc
class __$$FetchPresensiImplCopyWithImpl<$Res>
    extends _$MapelEventCopyWithImpl<$Res, _$FetchPresensiImpl>
    implements _$$FetchPresensiImplCopyWith<$Res> {
  __$$FetchPresensiImplCopyWithImpl(
      _$FetchPresensiImpl _value, $Res Function(_$FetchPresensiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapelId = freezed,
  }) {
    return _then(_$FetchPresensiImpl(
      mapelId: freezed == mapelId
          ? _value.mapelId
          : mapelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FetchPresensiImpl implements FetchPresensi {
  const _$FetchPresensiImpl({this.mapelId});

  @override
  final int? mapelId;

  @override
  String toString() {
    return 'MapelEvent.fetchPresensi(mapelId: $mapelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPresensiImpl &&
            (identical(other.mapelId, mapelId) || other.mapelId == mapelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPresensiImplCopyWith<_$FetchPresensiImpl> get copyWith =>
      __$$FetchPresensiImplCopyWithImpl<_$FetchPresensiImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? mapelId) fetchPresensi,
    required TResult Function(String? messages) getMessage,
  }) {
    return fetchPresensi(mapelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? mapelId)? fetchPresensi,
    TResult? Function(String? messages)? getMessage,
  }) {
    return fetchPresensi?.call(mapelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? mapelId)? fetchPresensi,
    TResult Function(String? messages)? getMessage,
    required TResult orElse(),
  }) {
    if (fetchPresensi != null) {
      return fetchPresensi(mapelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPresensi value) fetchPresensi,
    required TResult Function(GetMessages value) getMessage,
  }) {
    return fetchPresensi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPresensi value)? fetchPresensi,
    TResult? Function(GetMessages value)? getMessage,
  }) {
    return fetchPresensi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPresensi value)? fetchPresensi,
    TResult Function(GetMessages value)? getMessage,
    required TResult orElse(),
  }) {
    if (fetchPresensi != null) {
      return fetchPresensi(this);
    }
    return orElse();
  }
}

abstract class FetchPresensi implements MapelEvent {
  const factory FetchPresensi({final int? mapelId}) = _$FetchPresensiImpl;

  int? get mapelId;
  @JsonKey(ignore: true)
  _$$FetchPresensiImplCopyWith<_$FetchPresensiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesImplCopyWith<$Res> {
  factory _$$GetMessagesImplCopyWith(
          _$GetMessagesImpl value, $Res Function(_$GetMessagesImpl) then) =
      __$$GetMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? messages});
}

/// @nodoc
class __$$GetMessagesImplCopyWithImpl<$Res>
    extends _$MapelEventCopyWithImpl<$Res, _$GetMessagesImpl>
    implements _$$GetMessagesImplCopyWith<$Res> {
  __$$GetMessagesImplCopyWithImpl(
      _$GetMessagesImpl _value, $Res Function(_$GetMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$GetMessagesImpl(
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetMessagesImpl implements GetMessages {
  const _$GetMessagesImpl({this.messages});

  @override
  final String? messages;

  @override
  String toString() {
    return 'MapelEvent.getMessage(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMessagesImpl &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      __$$GetMessagesImplCopyWithImpl<_$GetMessagesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int? mapelId) fetchPresensi,
    required TResult Function(String? messages) getMessage,
  }) {
    return getMessage(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int? mapelId)? fetchPresensi,
    TResult? Function(String? messages)? getMessage,
  }) {
    return getMessage?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int? mapelId)? fetchPresensi,
    TResult Function(String? messages)? getMessage,
    required TResult orElse(),
  }) {
    if (getMessage != null) {
      return getMessage(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FetchPresensi value) fetchPresensi,
    required TResult Function(GetMessages value) getMessage,
  }) {
    return getMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FetchPresensi value)? fetchPresensi,
    TResult? Function(GetMessages value)? getMessage,
  }) {
    return getMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FetchPresensi value)? fetchPresensi,
    TResult Function(GetMessages value)? getMessage,
    required TResult orElse(),
  }) {
    if (getMessage != null) {
      return getMessage(this);
    }
    return orElse();
  }
}

abstract class GetMessages implements MapelEvent {
  const factory GetMessages({final String? messages}) = _$GetMessagesImpl;

  String? get messages;
  @JsonKey(ignore: true)
  _$$GetMessagesImplCopyWith<_$GetMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapelState {
  List<Presensi> get presensiData => throw _privateConstructorUsedError;
  FetchStatus get fetchDataProses => throw _privateConstructorUsedError;
  String get messages => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Presensi> presensiData,
            FetchStatus fetchDataProses, String messages)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Presensi> presensiData, FetchStatus fetchDataProses,
            String messages)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Presensi> presensiData, FetchStatus fetchDataProses,
            String messages)?
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
  $MapelStateCopyWith<MapelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapelStateCopyWith<$Res> {
  factory $MapelStateCopyWith(
          MapelState value, $Res Function(MapelState) then) =
      _$MapelStateCopyWithImpl<$Res, MapelState>;
  @useResult
  $Res call(
      {List<Presensi> presensiData,
      FetchStatus fetchDataProses,
      String messages});
}

/// @nodoc
class _$MapelStateCopyWithImpl<$Res, $Val extends MapelState>
    implements $MapelStateCopyWith<$Res> {
  _$MapelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presensiData = null,
    Object? fetchDataProses = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      presensiData: null == presensiData
          ? _value.presensiData
          : presensiData // ignore: cast_nullable_to_non_nullable
              as List<Presensi>,
      fetchDataProses: null == fetchDataProses
          ? _value.fetchDataProses
          : fetchDataProses // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MapelStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Presensi> presensiData,
      FetchStatus fetchDataProses,
      String messages});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MapelStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presensiData = null,
    Object? fetchDataProses = null,
    Object? messages = null,
  }) {
    return _then(_$InitialImpl(
      presensiData: null == presensiData
          ? _value._presensiData
          : presensiData // ignore: cast_nullable_to_non_nullable
              as List<Presensi>,
      fetchDataProses: null == fetchDataProses
          ? _value.fetchDataProses
          : fetchDataProses // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<Presensi> presensiData = const <Presensi>[],
      this.fetchDataProses = FetchStatus.initial,
      this.messages = ''})
      : _presensiData = presensiData;

  final List<Presensi> _presensiData;
  @override
  @JsonKey()
  List<Presensi> get presensiData {
    if (_presensiData is EqualUnmodifiableListView) return _presensiData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_presensiData);
  }

  @override
  @JsonKey()
  final FetchStatus fetchDataProses;
  @override
  @JsonKey()
  final String messages;

  @override
  String toString() {
    return 'MapelState.initial(presensiData: $presensiData, fetchDataProses: $fetchDataProses, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._presensiData, _presensiData) &&
            (identical(other.fetchDataProses, fetchDataProses) ||
                other.fetchDataProses == fetchDataProses) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_presensiData),
      fetchDataProses,
      messages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Presensi> presensiData,
            FetchStatus fetchDataProses, String messages)
        initial,
  }) {
    return initial(presensiData, fetchDataProses, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Presensi> presensiData, FetchStatus fetchDataProses,
            String messages)?
        initial,
  }) {
    return initial?.call(presensiData, fetchDataProses, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Presensi> presensiData, FetchStatus fetchDataProses,
            String messages)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(presensiData, fetchDataProses, messages);
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

abstract class _Initial implements MapelState {
  const factory _Initial(
      {final List<Presensi> presensiData,
      final FetchStatus fetchDataProses,
      final String messages}) = _$InitialImpl;

  @override
  List<Presensi> get presensiData;
  @override
  FetchStatus get fetchDataProses;
  @override
  String get messages;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
