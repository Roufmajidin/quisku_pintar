// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportModels _$ReportModelsFromJson(Map<String, dynamic> json) {
  return _ReportModels.fromJson(json);
}

/// @nodoc
mixin _$ReportModels {
  String get keterangan => throw _privateConstructorUsedError;
  Map<String, List<ExamData>> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelsCopyWith<ReportModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelsCopyWith<$Res> {
  factory $ReportModelsCopyWith(
          ReportModels value, $Res Function(ReportModels) then) =
      _$ReportModelsCopyWithImpl<$Res, ReportModels>;
  @useResult
  $Res call({String keterangan, Map<String, List<ExamData>> data});
}

/// @nodoc
class _$ReportModelsCopyWithImpl<$Res, $Val extends ReportModels>
    implements $ReportModelsCopyWith<$Res> {
  _$ReportModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keterangan = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ExamData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportModelsImplCopyWith<$Res>
    implements $ReportModelsCopyWith<$Res> {
  factory _$$ReportModelsImplCopyWith(
          _$ReportModelsImpl value, $Res Function(_$ReportModelsImpl) then) =
      __$$ReportModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keterangan, Map<String, List<ExamData>> data});
}

/// @nodoc
class __$$ReportModelsImplCopyWithImpl<$Res>
    extends _$ReportModelsCopyWithImpl<$Res, _$ReportModelsImpl>
    implements _$$ReportModelsImplCopyWith<$Res> {
  __$$ReportModelsImplCopyWithImpl(
      _$ReportModelsImpl _value, $Res Function(_$ReportModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keterangan = null,
    Object? data = null,
  }) {
    return _then(_$ReportModelsImpl(
      keterangan: null == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ExamData>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportModelsImpl implements _ReportModels {
  _$ReportModelsImpl(
      {required this.keterangan,
      required final Map<String, List<ExamData>> data})
      : _data = data;

  factory _$ReportModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelsImplFromJson(json);

  @override
  final String keterangan;
  final Map<String, List<ExamData>> _data;
  @override
  Map<String, List<ExamData>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ReportModels(keterangan: $keterangan, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelsImpl &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, keterangan, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelsImplCopyWith<_$ReportModelsImpl> get copyWith =>
      __$$ReportModelsImplCopyWithImpl<_$ReportModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelsImplToJson(
      this,
    );
  }
}

abstract class _ReportModels implements ReportModels {
  factory _ReportModels(
      {required final String keterangan,
      required final Map<String, List<ExamData>> data}) = _$ReportModelsImpl;

  factory _ReportModels.fromJson(Map<String, dynamic> json) =
      _$ReportModelsImpl.fromJson;

  @override
  String get keterangan;
  @override
  Map<String, List<ExamData>> get data;
  @override
  @JsonKey(ignore: true)
  _$$ReportModelsImplCopyWith<_$ReportModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExamData _$ExamDataFromJson(Map<String, dynamic> json) {
  return _ExamData.fromJson(json);
}

/// @nodoc
mixin _$ExamData {
  String get keterangan_ujian => throw _privateConstructorUsedError;
  int get semester => throw _privateConstructorUsedError;
  int get siswa_id => throw _privateConstructorUsedError;
  dynamic get jawaban => throw _privateConstructorUsedError;
  int get selesai => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  int get mapel_id => throw _privateConstructorUsedError;
  int get nilai => throw _privateConstructorUsedError; // required Mapel mapel,
  String get mapel => throw _privateConstructorUsedError;
  String get guru => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamDataCopyWith<ExamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamDataCopyWith<$Res> {
  factory $ExamDataCopyWith(ExamData value, $Res Function(ExamData) then) =
      _$ExamDataCopyWithImpl<$Res, ExamData>;
  @useResult
  $Res call(
      {String keterangan_ujian,
      int semester,
      int siswa_id,
      dynamic jawaban,
      int selesai,
      String created_at,
      String updated_at,
      int mapel_id,
      int nilai,
      String mapel,
      String guru});
}

/// @nodoc
class _$ExamDataCopyWithImpl<$Res, $Val extends ExamData>
    implements $ExamDataCopyWith<$Res> {
  _$ExamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keterangan_ujian = null,
    Object? semester = null,
    Object? siswa_id = null,
    Object? jawaban = freezed,
    Object? selesai = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? mapel_id = null,
    Object? nilai = null,
    Object? mapel = null,
    Object? guru = null,
  }) {
    return _then(_value.copyWith(
      keterangan_ujian: null == keterangan_ujian
          ? _value.keterangan_ujian
          : keterangan_ujian // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      siswa_id: null == siswa_id
          ? _value.siswa_id
          : siswa_id // ignore: cast_nullable_to_non_nullable
              as int,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selesai: null == selesai
          ? _value.selesai
          : selesai // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      mapel_id: null == mapel_id
          ? _value.mapel_id
          : mapel_id // ignore: cast_nullable_to_non_nullable
              as int,
      nilai: null == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
      guru: null == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExamDataImplCopyWith<$Res>
    implements $ExamDataCopyWith<$Res> {
  factory _$$ExamDataImplCopyWith(
          _$ExamDataImpl value, $Res Function(_$ExamDataImpl) then) =
      __$$ExamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String keterangan_ujian,
      int semester,
      int siswa_id,
      dynamic jawaban,
      int selesai,
      String created_at,
      String updated_at,
      int mapel_id,
      int nilai,
      String mapel,
      String guru});
}

/// @nodoc
class __$$ExamDataImplCopyWithImpl<$Res>
    extends _$ExamDataCopyWithImpl<$Res, _$ExamDataImpl>
    implements _$$ExamDataImplCopyWith<$Res> {
  __$$ExamDataImplCopyWithImpl(
      _$ExamDataImpl _value, $Res Function(_$ExamDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keterangan_ujian = null,
    Object? semester = null,
    Object? siswa_id = null,
    Object? jawaban = freezed,
    Object? selesai = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? mapel_id = null,
    Object? nilai = null,
    Object? mapel = null,
    Object? guru = null,
  }) {
    return _then(_$ExamDataImpl(
      keterangan_ujian: null == keterangan_ujian
          ? _value.keterangan_ujian
          : keterangan_ujian // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      siswa_id: null == siswa_id
          ? _value.siswa_id
          : siswa_id // ignore: cast_nullable_to_non_nullable
              as int,
      jawaban: freezed == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selesai: null == selesai
          ? _value.selesai
          : selesai // ignore: cast_nullable_to_non_nullable
              as int,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      mapel_id: null == mapel_id
          ? _value.mapel_id
          : mapel_id // ignore: cast_nullable_to_non_nullable
              as int,
      nilai: null == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int,
      mapel: null == mapel
          ? _value.mapel
          : mapel // ignore: cast_nullable_to_non_nullable
              as String,
      guru: null == guru
          ? _value.guru
          : guru // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExamDataImpl implements _ExamData {
  _$ExamDataImpl(
      {required this.keterangan_ujian,
      required this.semester,
      required this.siswa_id,
      required this.jawaban,
      required this.selesai,
      required this.created_at,
      required this.updated_at,
      required this.mapel_id,
      required this.nilai,
      required this.mapel,
      required this.guru});

  factory _$ExamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamDataImplFromJson(json);

  @override
  final String keterangan_ujian;
  @override
  final int semester;
  @override
  final int siswa_id;
  @override
  final dynamic jawaban;
  @override
  final int selesai;
  @override
  final String created_at;
  @override
  final String updated_at;
  @override
  final int mapel_id;
  @override
  final int nilai;
// required Mapel mapel,
  @override
  final String mapel;
  @override
  final String guru;

  @override
  String toString() {
    return 'ExamData(keterangan_ujian: $keterangan_ujian, semester: $semester, siswa_id: $siswa_id, jawaban: $jawaban, selesai: $selesai, created_at: $created_at, updated_at: $updated_at, mapel_id: $mapel_id, nilai: $nilai, mapel: $mapel, guru: $guru)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExamDataImpl &&
            (identical(other.keterangan_ujian, keterangan_ujian) ||
                other.keterangan_ujian == keterangan_ujian) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.siswa_id, siswa_id) ||
                other.siswa_id == siswa_id) &&
            const DeepCollectionEquality().equals(other.jawaban, jawaban) &&
            (identical(other.selesai, selesai) || other.selesai == selesai) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.mapel_id, mapel_id) ||
                other.mapel_id == mapel_id) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.mapel, mapel) || other.mapel == mapel) &&
            (identical(other.guru, guru) || other.guru == guru));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      keterangan_ujian,
      semester,
      siswa_id,
      const DeepCollectionEquality().hash(jawaban),
      selesai,
      created_at,
      updated_at,
      mapel_id,
      nilai,
      mapel,
      guru);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExamDataImplCopyWith<_$ExamDataImpl> get copyWith =>
      __$$ExamDataImplCopyWithImpl<_$ExamDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExamDataImplToJson(
      this,
    );
  }
}

abstract class _ExamData implements ExamData {
  factory _ExamData(
      {required final String keterangan_ujian,
      required final int semester,
      required final int siswa_id,
      required final dynamic jawaban,
      required final int selesai,
      required final String created_at,
      required final String updated_at,
      required final int mapel_id,
      required final int nilai,
      required final String mapel,
      required final String guru}) = _$ExamDataImpl;

  factory _ExamData.fromJson(Map<String, dynamic> json) =
      _$ExamDataImpl.fromJson;

  @override
  String get keterangan_ujian;
  @override
  int get semester;
  @override
  int get siswa_id;
  @override
  dynamic get jawaban;
  @override
  int get selesai;
  @override
  String get created_at;
  @override
  String get updated_at;
  @override
  int get mapel_id;
  @override
  int get nilai;
  @override // required Mapel mapel,
  String get mapel;
  @override
  String get guru;
  @override
  @JsonKey(ignore: true)
  _$$ExamDataImplCopyWith<_$ExamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
