// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int? get id => throw _privateConstructorUsedError;
  int? get pelajaran_id => throw _privateConstructorUsedError;
  List<dynamic> get opsi => throw _privateConstructorUsedError;
  String get jawaban_benar => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  Mapel? get mapel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int? id,
      int? pelajaran_id,
      List<dynamic> opsi,
      String jawaban_benar,
      String created_at,
      String updated_at,
      Mapel? mapel});

  $MapelCopyWith<$Res>? get mapel;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pelajaran_id = freezed,
    Object? opsi = null,
    Object? jawaban_benar = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? mapel = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pelajaran_id: freezed == pelajaran_id
          ? _value.pelajaran_id
          : pelajaran_id // ignore: cast_nullable_to_non_nullable
              as int?,
      opsi: null == opsi
          ? _value.opsi
          : opsi // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      jawaban_benar: null == jawaban_benar
          ? _value.jawaban_benar
          : jawaban_benar // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: freezed == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as Mapel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapelCopyWith<$Res>? get mapel {
    if (_value.mapel == null) {
      return null;
    }

    return $MapelCopyWith<$Res>(_value.mapel!, (value) {
      return _then(_value.copyWith(mapel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? pelajaran_id,
      List<dynamic> opsi,
      String jawaban_benar,
      String created_at,
      String updated_at,
      Mapel? mapel});

  @override
  $MapelCopyWith<$Res>? get mapel;
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pelajaran_id = freezed,
    Object? opsi = null,
    Object? jawaban_benar = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? mapel = freezed,
  }) {
    return _then(_$QuestionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pelajaran_id: freezed == pelajaran_id
          ? _value.pelajaran_id
          : pelajaran_id // ignore: cast_nullable_to_non_nullable
              as int?,
      opsi: null == opsi
          ? _value._opsi
          : opsi // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      jawaban_benar: null == jawaban_benar
          ? _value.jawaban_benar
          : jawaban_benar // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      mapel: freezed == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as Mapel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionImpl implements _Question {
  _$QuestionImpl(
      {this.id,
      this.pelajaran_id,
      required final List<dynamic> opsi,
      required this.jawaban_benar,
      required this.created_at,
      required this.updated_at,
      this.mapel})
      : _opsi = opsi;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final int? id;
  @override
  final int? pelajaran_id;
  final List<dynamic> _opsi;
  @override
  List<dynamic> get opsi {
    if (_opsi is EqualUnmodifiableListView) return _opsi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_opsi);
  }

  @override
  final String jawaban_benar;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final Mapel? mapel;

  @override
  String toString() {
    return 'Question(id: $id, pelajaran_id: $pelajaran_id, opsi: $opsi, jawaban_benar: $jawaban_benar, created_at: $created_at, updated_at: $updated_at, mapel: $mapel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pelajaran_id, pelajaran_id) ||
                other.pelajaran_id == pelajaran_id) &&
            const DeepCollectionEquality().equals(other._opsi, _opsi) &&
            (identical(other.jawaban_benar, jawaban_benar) ||
                other.jawaban_benar == jawaban_benar) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.mapel, mapel) || other.mapel == mapel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      pelajaran_id,
      const DeepCollectionEquality().hash(_opsi),
      jawaban_benar,
      created_at,
      updated_at,
      mapel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  factory _Question(
      {final int? id,
      final int? pelajaran_id,
      required final List<dynamic> opsi,
      required final String jawaban_benar,
      required final String created_at,
      required final String updated_at,
      final Mapel? mapel}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  int? get id;
  @override
  int? get pelajaran_id;
  @override
  List<dynamic> get opsi;
  @override
  String get jawaban_benar;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  Mapel? get mapel;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Mapel _$MapelFromJson(Map<String, dynamic> json) {
  return _Mapel.fromJson(json);
}

/// @nodoc
mixin _$Mapel {
  int? get id => throw _privateConstructorUsedError;
  String? get guru => throw _privateConstructorUsedError;
  String? get mapel => throw _privateConstructorUsedError;
  String? get images => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapelCopyWith<Mapel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapelCopyWith<$Res> {
  factory $MapelCopyWith(Mapel value, $Res Function(Mapel) then) =
      _$MapelCopyWithImpl<$Res, Mapel>;
  @useResult
  $Res call(
      {int? id,
      String? guru,
      String? mapel,
      String? images,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class _$MapelCopyWithImpl<$Res, $Val extends Mapel>
    implements $MapelCopyWith<$Res> {
  _$MapelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? guru = freezed,
    Object? mapel = freezed,
    Object? images = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      guru: freezed == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String?,
      mapel: freezed == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapelImplCopyWith<$Res> implements $MapelCopyWith<$Res> {
  factory _$$MapelImplCopyWith(
          _$MapelImpl value, $Res Function(_$MapelImpl) then) =
      __$$MapelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? guru,
      String? mapel,
      String? images,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class __$$MapelImplCopyWithImpl<$Res>
    extends _$MapelCopyWithImpl<$Res, _$MapelImpl>
    implements _$$MapelImplCopyWith<$Res> {
  __$$MapelImplCopyWithImpl(
      _$MapelImpl _value, $Res Function(_$MapelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? guru = freezed,
    Object? mapel = freezed,
    Object? images = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$MapelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      guru: freezed == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String?,
      mapel: freezed == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapelImpl implements _Mapel {
  _$MapelImpl(
      {this.id,
      this.guru,
      this.mapel,
      this.images,
      this.created_at,
      this.updated_at});

  factory _$MapelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? guru;
  @override
  final String? mapel;
  @override
  final String? images;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  @override
  String toString() {
    return 'Mapel(id: $id, guru: $guru, mapel: $mapel, images: $images, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.guru, guru) || other.guru == guru) &&
            (identical(other.mapel, mapel) || other.mapel == mapel) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, guru, mapel, images, created_at, updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapelImplCopyWith<_$MapelImpl> get copyWith =>
      __$$MapelImplCopyWithImpl<_$MapelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapelImplToJson(
      this,
    );
  }
}

abstract class _Mapel implements Mapel {
  factory _Mapel(
      {final int? id,
      final String? guru,
      final String? mapel,
      final String? images,
      final String? created_at,
      final String? updated_at}) = _$MapelImpl;

  factory _Mapel.fromJson(Map<String, dynamic> json) = _$MapelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get guru;
  @override
  String? get mapel;
  @override
  String? get images;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$MapelImplCopyWith<_$MapelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
