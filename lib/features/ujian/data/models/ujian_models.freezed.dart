// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ujian_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ujian _$UjianFromJson(Map<String, dynamic> json) {
  return _Ujian.fromJson(json);
}

/// @nodoc
mixin _$Ujian {
  int get id => throw _privateConstructorUsedError;
  String get user_id => throw _privateConstructorUsedError;
  String get user_name => throw _privateConstructorUsedError;
  String get mapel => throw _privateConstructorUsedError;
  int get mapel_id => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  String get guru => throw _privateConstructorUsedError;
  int get nilai => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UjianCopyWith<Ujian> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UjianCopyWith<$Res> {
  factory $UjianCopyWith(Ujian value, $Res Function(Ujian) then) =
      _$UjianCopyWithImpl<$Res, Ujian>;
  @useResult
  $Res call(
      {int id,
      String user_id,
      String user_name,
      String mapel,
      int mapel_id,
      String images,
      String guru,
      int nilai,
      String status});
}

/// @nodoc
class _$UjianCopyWithImpl<$Res, $Val extends Ujian>
    implements $UjianCopyWith<$Res> {
  _$UjianCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? user_name = null,
    Object? mapel = null,
    Object? mapel_id = null,
    Object? images = null,
    Object? guru = null,
    Object? nilai = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_name: null == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
      mapel_id: null == mapel_id
          ? _value.mapel_id
          : mapel_id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      guru: null == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String,
      nilai: null == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UjianImplCopyWith<$Res> implements $UjianCopyWith<$Res> {
  factory _$$UjianImplCopyWith(
          _$UjianImpl value, $Res Function(_$UjianImpl) then) =
      __$$UjianImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String user_id,
      String user_name,
      String mapel,
      int mapel_id,
      String images,
      String guru,
      int nilai,
      String status});
}

/// @nodoc
class __$$UjianImplCopyWithImpl<$Res>
    extends _$UjianCopyWithImpl<$Res, _$UjianImpl>
    implements _$$UjianImplCopyWith<$Res> {
  __$$UjianImplCopyWithImpl(
      _$UjianImpl _value, $Res Function(_$UjianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = null,
    Object? user_name = null,
    Object? mapel = null,
    Object? mapel_id = null,
    Object? images = null,
    Object? guru = null,
    Object? nilai = null,
    Object? status = null,
  }) {
    return _then(_$UjianImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_name: null == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
      mapel_id: null == mapel_id
          ? _value.mapel_id
          : mapel_id // ignore: cast_nullable_to_non_nullable
              as int,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      guru: null == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String,
      nilai: null == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UjianImpl implements _Ujian {
  _$UjianImpl(
      {required this.id,
      required this.user_id,
      required this.user_name,
      required this.mapel,
      required this.mapel_id,
      required this.images,
      required this.guru,
      required this.nilai,
      required this.status});

  factory _$UjianImpl.fromJson(Map<String, dynamic> json) =>
      _$$UjianImplFromJson(json);

  @override
  final int id;
  @override
  final String user_id;
  @override
  final String user_name;
  @override
  final String mapel;
  @override
  final int mapel_id;
  @override
  final String images;
  @override
  final String guru;
  @override
  final int nilai;
  @override
  final String status;

  @override
  String toString() {
    return 'Ujian(id: $id, user_id: $user_id, user_name: $user_name, mapel: $mapel, mapel_id: $mapel_id, images: $images, guru: $guru, nilai: $nilai, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UjianImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.mapel, mapel) || other.mapel == mapel) &&
            (identical(other.mapel_id, mapel_id) ||
                other.mapel_id == mapel_id) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.guru, guru) || other.guru == guru) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, user_name, mapel,
      mapel_id, images, guru, nilai, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UjianImplCopyWith<_$UjianImpl> get copyWith =>
      __$$UjianImplCopyWithImpl<_$UjianImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UjianImplToJson(
      this,
    );
  }
}

abstract class _Ujian implements Ujian {
  factory _Ujian(
      {required final int id,
      required final String user_id,
      required final String user_name,
      required final String mapel,
      required final int mapel_id,
      required final String images,
      required final String guru,
      required final int nilai,
      required final String status}) = _$UjianImpl;

  factory _Ujian.fromJson(Map<String, dynamic> json) = _$UjianImpl.fromJson;

  @override
  int get id;
  @override
  String get user_id;
  @override
  String get user_name;
  @override
  String get mapel;
  @override
  int get mapel_id;
  @override
  String get images;
  @override
  String get guru;
  @override
  int get nilai;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$UjianImplCopyWith<_$UjianImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
