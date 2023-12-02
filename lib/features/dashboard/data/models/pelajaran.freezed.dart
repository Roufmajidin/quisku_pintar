// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pelajaran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pelajaran _$PelajaranFromJson(Map<String, dynamic> json) {
  return _Pelajaran.fromJson(json);
}

/// @nodoc
mixin _$Pelajaran {
  int? get id => throw _privateConstructorUsedError;
  String get guru => throw _privateConstructorUsedError;
  String get mapel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PelajaranCopyWith<Pelajaran> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PelajaranCopyWith<$Res> {
  factory $PelajaranCopyWith(Pelajaran value, $Res Function(Pelajaran) then) =
      _$PelajaranCopyWithImpl<$Res, Pelajaran>;
  @useResult
  $Res call({int? id, String guru, String mapel});
}

/// @nodoc
class _$PelajaranCopyWithImpl<$Res, $Val extends Pelajaran>
    implements $PelajaranCopyWith<$Res> {
  _$PelajaranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? guru = null,
    Object? mapel = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      guru: null == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PelajaranImplCopyWith<$Res>
    implements $PelajaranCopyWith<$Res> {
  factory _$$PelajaranImplCopyWith(
          _$PelajaranImpl value, $Res Function(_$PelajaranImpl) then) =
      __$$PelajaranImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String guru, String mapel});
}

/// @nodoc
class __$$PelajaranImplCopyWithImpl<$Res>
    extends _$PelajaranCopyWithImpl<$Res, _$PelajaranImpl>
    implements _$$PelajaranImplCopyWith<$Res> {
  __$$PelajaranImplCopyWithImpl(
      _$PelajaranImpl _value, $Res Function(_$PelajaranImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? guru = null,
    Object? mapel = null,
  }) {
    return _then(_$PelajaranImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      guru: null == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PelajaranImpl implements _Pelajaran {
  _$PelajaranImpl({this.id, required this.guru, required this.mapel});

  factory _$PelajaranImpl.fromJson(Map<String, dynamic> json) =>
      _$$PelajaranImplFromJson(json);

  @override
  final int? id;
  @override
  final String guru;
  @override
  final String mapel;

  @override
  String toString() {
    return 'Pelajaran(id: $id, guru: $guru, mapel: $mapel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PelajaranImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.guru, guru) || other.guru == guru) &&
            (identical(other.mapel, mapel) || other.mapel == mapel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, guru, mapel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PelajaranImplCopyWith<_$PelajaranImpl> get copyWith =>
      __$$PelajaranImplCopyWithImpl<_$PelajaranImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PelajaranImplToJson(
      this,
    );
  }
}

abstract class _Pelajaran implements Pelajaran {
  factory _Pelajaran(
      {final int? id,
      required final String guru,
      required final String mapel}) = _$PelajaranImpl;

  factory _Pelajaran.fromJson(Map<String, dynamic> json) =
      _$PelajaranImpl.fromJson;

  @override
  int? get id;
  @override
  String get guru;
  @override
  String get mapel;
  @override
  @JsonKey(ignore: true)
  _$$PelajaranImplCopyWith<_$PelajaranImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
