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
  Map<String, SemesterData> get semester => throw _privateConstructorUsedError;

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
  $Res call({Map<String, SemesterData> semester});
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
    Object? semester = null,
  }) {
    return _then(_value.copyWith(
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as Map<String, SemesterData>,
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
  $Res call({Map<String, SemesterData> semester});
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
    Object? semester = null,
  }) {
    return _then(_$ReportModelsImpl(
      semester: null == semester
          ? _value._semester
          : semester // ignore: cast_nullable_to_non_nullable
              as Map<String, SemesterData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportModelsImpl implements _ReportModels {
  _$ReportModelsImpl({required final Map<String, SemesterData> semester})
      : _semester = semester;

  factory _$ReportModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelsImplFromJson(json);

  final Map<String, SemesterData> _semester;
  @override
  Map<String, SemesterData> get semester {
    if (_semester is EqualUnmodifiableMapView) return _semester;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_semester);
  }

  @override
  String toString() {
    return 'ReportModels(semester: $semester)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelsImpl &&
            const DeepCollectionEquality().equals(other._semester, _semester));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_semester));

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
  factory _ReportModels({required final Map<String, SemesterData> semester}) =
      _$ReportModelsImpl;

  factory _ReportModels.fromJson(Map<String, dynamic> json) =
      _$ReportModelsImpl.fromJson;

  @override
  Map<String, SemesterData> get semester;
  @override
  @JsonKey(ignore: true)
  _$$ReportModelsImplCopyWith<_$ReportModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SemesterData _$SemesterDataFromJson(Map<String, dynamic> json) {
  return _SemesterData.fromJson(json);
}

/// @nodoc
mixin _$SemesterData {
  Map<String, Map<String, ExamData>> get data_pas =>
      throw _privateConstructorUsedError;
  List<Map<String, ExamData>> get data_pts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SemesterDataCopyWith<SemesterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SemesterDataCopyWith<$Res> {
  factory $SemesterDataCopyWith(
          SemesterData value, $Res Function(SemesterData) then) =
      _$SemesterDataCopyWithImpl<$Res, SemesterData>;
  @useResult
  $Res call(
      {Map<String, Map<String, ExamData>> data_pas,
      List<Map<String, ExamData>> data_pts});
}

/// @nodoc
class _$SemesterDataCopyWithImpl<$Res, $Val extends SemesterData>
    implements $SemesterDataCopyWith<$Res> {
  _$SemesterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data_pas = null,
    Object? data_pts = null,
  }) {
    return _then(_value.copyWith(
      data_pas: null == data_pas
          ? _value.data_pas
          : data_pas // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, ExamData>>,
      data_pts: null == data_pts
          ? _value.data_pts
          : data_pts // ignore: cast_nullable_to_non_nullable
              as List<Map<String, ExamData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SemesterDataImplCopyWith<$Res>
    implements $SemesterDataCopyWith<$Res> {
  factory _$$SemesterDataImplCopyWith(
          _$SemesterDataImpl value, $Res Function(_$SemesterDataImpl) then) =
      __$$SemesterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Map<String, ExamData>> data_pas,
      List<Map<String, ExamData>> data_pts});
}

/// @nodoc
class __$$SemesterDataImplCopyWithImpl<$Res>
    extends _$SemesterDataCopyWithImpl<$Res, _$SemesterDataImpl>
    implements _$$SemesterDataImplCopyWith<$Res> {
  __$$SemesterDataImplCopyWithImpl(
      _$SemesterDataImpl _value, $Res Function(_$SemesterDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data_pas = null,
    Object? data_pts = null,
  }) {
    return _then(_$SemesterDataImpl(
      data_pas: null == data_pas
          ? _value._data_pas
          : data_pas // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, ExamData>>,
      data_pts: null == data_pts
          ? _value._data_pts
          : data_pts // ignore: cast_nullable_to_non_nullable
              as List<Map<String, ExamData>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SemesterDataImpl implements _SemesterData {
  _$SemesterDataImpl(
      {required final Map<String, Map<String, ExamData>> data_pas,
      required final List<Map<String, ExamData>> data_pts})
      : _data_pas = data_pas,
        _data_pts = data_pts;

  factory _$SemesterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SemesterDataImplFromJson(json);

  final Map<String, Map<String, ExamData>> _data_pas;
  @override
  Map<String, Map<String, ExamData>> get data_pas {
    if (_data_pas is EqualUnmodifiableMapView) return _data_pas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data_pas);
  }

  final List<Map<String, ExamData>> _data_pts;
  @override
  List<Map<String, ExamData>> get data_pts {
    if (_data_pts is EqualUnmodifiableListView) return _data_pts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data_pts);
  }

  @override
  String toString() {
    return 'SemesterData(data_pas: $data_pas, data_pts: $data_pts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SemesterDataImpl &&
            const DeepCollectionEquality().equals(other._data_pas, _data_pas) &&
            const DeepCollectionEquality().equals(other._data_pts, _data_pts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data_pas),
      const DeepCollectionEquality().hash(_data_pts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SemesterDataImplCopyWith<_$SemesterDataImpl> get copyWith =>
      __$$SemesterDataImplCopyWithImpl<_$SemesterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SemesterDataImplToJson(
      this,
    );
  }
}

abstract class _SemesterData implements SemesterData {
  factory _SemesterData(
          {required final Map<String, Map<String, ExamData>> data_pas,
          required final List<Map<String, ExamData>> data_pts}) =
      _$SemesterDataImpl;

  factory _SemesterData.fromJson(Map<String, dynamic> json) =
      _$SemesterDataImpl.fromJson;

  @override
  Map<String, Map<String, ExamData>> get data_pas;
  @override
  List<Map<String, ExamData>> get data_pts;
  @override
  @JsonKey(ignore: true)
  _$$SemesterDataImplCopyWith<_$SemesterDataImpl> get copyWith =>
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
  String get jawaban => throw _privateConstructorUsedError;
  int get selesai => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;
  int get mapel_id => throw _privateConstructorUsedError;
  int get nilai => throw _privateConstructorUsedError;
  MapelData get mapel => throw _privateConstructorUsedError;

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
      String jawaban,
      int selesai,
      String created_at,
      String updated_at,
      int mapel_id,
      int nilai,
      MapelData mapel});

  $MapelDataCopyWith<$Res> get mapel;
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
    Object? jawaban = null,
    Object? selesai = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? mapel_id = null,
    Object? nilai = null,
    Object? mapel = null,
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
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String,
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
              as MapelData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapelDataCopyWith<$Res> get mapel {
    return $MapelDataCopyWith<$Res>(_value.mapel, (value) {
      return _then(_value.copyWith(mapel: value) as $Val);
    });
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
      String jawaban,
      int selesai,
      String created_at,
      String updated_at,
      int mapel_id,
      int nilai,
      MapelData mapel});

  @override
  $MapelDataCopyWith<$Res> get mapel;
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
    Object? jawaban = null,
    Object? selesai = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? mapel_id = null,
    Object? nilai = null,
    Object? mapel = null,
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
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String,
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
              as MapelData,
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
      required this.mapel});

  factory _$ExamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExamDataImplFromJson(json);

  @override
  final String keterangan_ujian;
  @override
  final int semester;
  @override
  final int siswa_id;
  @override
  final String jawaban;
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
  @override
  final MapelData mapel;

  @override
  String toString() {
    return 'ExamData(keterangan_ujian: $keterangan_ujian, semester: $semester, siswa_id: $siswa_id, jawaban: $jawaban, selesai: $selesai, created_at: $created_at, updated_at: $updated_at, mapel_id: $mapel_id, nilai: $nilai, mapel: $mapel)';
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
            (identical(other.jawaban, jawaban) || other.jawaban == jawaban) &&
            (identical(other.selesai, selesai) || other.selesai == selesai) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.mapel_id, mapel_id) ||
                other.mapel_id == mapel_id) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.mapel, mapel) || other.mapel == mapel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      keterangan_ujian,
      semester,
      siswa_id,
      jawaban,
      selesai,
      created_at,
      updated_at,
      mapel_id,
      nilai,
      mapel);

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
      required final String jawaban,
      required final int selesai,
      required final String created_at,
      required final String updated_at,
      required final int mapel_id,
      required final int nilai,
      required final MapelData mapel}) = _$ExamDataImpl;

  factory _ExamData.fromJson(Map<String, dynamic> json) =
      _$ExamDataImpl.fromJson;

  @override
  String get keterangan_ujian;
  @override
  int get semester;
  @override
  int get siswa_id;
  @override
  String get jawaban;
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
  @override
  MapelData get mapel;
  @override
  @JsonKey(ignore: true)
  _$$ExamDataImplCopyWith<_$ExamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MapelData _$MapelDataFromJson(Map<String, dynamic> json) {
  return _MapelData.fromJson(json);
}

/// @nodoc
mixin _$MapelData {
  int get id => throw _privateConstructorUsedError;
  String get nama_mapel => throw _privateConstructorUsedError;
  String get nama_guru => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapelDataCopyWith<MapelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapelDataCopyWith<$Res> {
  factory $MapelDataCopyWith(MapelData value, $Res Function(MapelData) then) =
      _$MapelDataCopyWithImpl<$Res, MapelData>;
  @useResult
  $Res call({int id, String nama_mapel, String nama_guru});
}

/// @nodoc
class _$MapelDataCopyWithImpl<$Res, $Val extends MapelData>
    implements $MapelDataCopyWith<$Res> {
  _$MapelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama_mapel = null,
    Object? nama_guru = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama_mapel: null == nama_mapel
          ? _value.nama_mapel
          : nama_mapel // ignore: cast_nullable_to_non_nullable
              as String,
      nama_guru: null == nama_guru
          ? _value.nama_guru
          : nama_guru // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapelDataImplCopyWith<$Res>
    implements $MapelDataCopyWith<$Res> {
  factory _$$MapelDataImplCopyWith(
          _$MapelDataImpl value, $Res Function(_$MapelDataImpl) then) =
      __$$MapelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nama_mapel, String nama_guru});
}

/// @nodoc
class __$$MapelDataImplCopyWithImpl<$Res>
    extends _$MapelDataCopyWithImpl<$Res, _$MapelDataImpl>
    implements _$$MapelDataImplCopyWith<$Res> {
  __$$MapelDataImplCopyWithImpl(
      _$MapelDataImpl _value, $Res Function(_$MapelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama_mapel = null,
    Object? nama_guru = null,
  }) {
    return _then(_$MapelDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama_mapel: null == nama_mapel
          ? _value.nama_mapel
          : nama_mapel // ignore: cast_nullable_to_non_nullable
              as String,
      nama_guru: null == nama_guru
          ? _value.nama_guru
          : nama_guru // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MapelDataImpl implements _MapelData {
  _$MapelDataImpl(
      {required this.id, required this.nama_mapel, required this.nama_guru});

  factory _$MapelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MapelDataImplFromJson(json);

  @override
  final int id;
  @override
  final String nama_mapel;
  @override
  final String nama_guru;

  @override
  String toString() {
    return 'MapelData(id: $id, nama_mapel: $nama_mapel, nama_guru: $nama_guru)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapelDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama_mapel, nama_mapel) ||
                other.nama_mapel == nama_mapel) &&
            (identical(other.nama_guru, nama_guru) ||
                other.nama_guru == nama_guru));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama_mapel, nama_guru);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapelDataImplCopyWith<_$MapelDataImpl> get copyWith =>
      __$$MapelDataImplCopyWithImpl<_$MapelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MapelDataImplToJson(
      this,
    );
  }
}

abstract class _MapelData implements MapelData {
  factory _MapelData(
      {required final int id,
      required final String nama_mapel,
      required final String nama_guru}) = _$MapelDataImpl;

  factory _MapelData.fromJson(Map<String, dynamic> json) =
      _$MapelDataImpl.fromJson;

  @override
  int get id;
  @override
  String get nama_mapel;
  @override
  String get nama_guru;
  @override
  @JsonKey(ignore: true)
  _$$MapelDataImplCopyWith<_$MapelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
