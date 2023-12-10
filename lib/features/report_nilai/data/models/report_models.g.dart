// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelsImpl _$$ReportModelsImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelsImpl(
      semester: (json['semester'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, SemesterData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$ReportModelsImplToJson(_$ReportModelsImpl instance) =>
    <String, dynamic>{
      'semester': instance.semester,
    };

_$SemesterDataImpl _$$SemesterDataImplFromJson(Map<String, dynamic> json) =>
    _$SemesterDataImpl(
      data_pas: (json['data_pas'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) =>
                  MapEntry(k, ExamData.fromJson(e as Map<String, dynamic>)),
            )),
      ),
      data_pts: (json['data_pts'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) =>
                    MapEntry(k, ExamData.fromJson(e as Map<String, dynamic>)),
              ))
          .toList(),
    );

Map<String, dynamic> _$$SemesterDataImplToJson(_$SemesterDataImpl instance) =>
    <String, dynamic>{
      'data_pas': instance.data_pas,
      'data_pts': instance.data_pts,
    };

_$ExamDataImpl _$$ExamDataImplFromJson(Map<String, dynamic> json) =>
    _$ExamDataImpl(
      keterangan_ujian: json['keterangan_ujian'] as String,
      semester: json['semester'] as int,
      siswa_id: json['siswa_id'] as int,
      jawaban: json['jawaban'] as String,
      selesai: json['selesai'] as int,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      mapel_id: json['mapel_id'] as int,
      nilai: json['nilai'] as int,
      mapel: MapelData.fromJson(json['mapel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ExamDataImplToJson(_$ExamDataImpl instance) =>
    <String, dynamic>{
      'keterangan_ujian': instance.keterangan_ujian,
      'semester': instance.semester,
      'siswa_id': instance.siswa_id,
      'jawaban': instance.jawaban,
      'selesai': instance.selesai,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'mapel_id': instance.mapel_id,
      'nilai': instance.nilai,
      'mapel': instance.mapel,
    };

_$MapelDataImpl _$$MapelDataImplFromJson(Map<String, dynamic> json) =>
    _$MapelDataImpl(
      id: json['id'] as int,
      nama_mapel: json['nama_mapel'] as String,
      nama_guru: json['nama_guru'] as String,
    );

Map<String, dynamic> _$$MapelDataImplToJson(_$MapelDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_mapel': instance.nama_mapel,
      'nama_guru': instance.nama_guru,
    };
