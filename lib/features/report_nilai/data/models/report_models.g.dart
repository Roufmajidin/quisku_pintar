// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelsImpl _$$ReportModelsImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelsImpl(
      keterangan: json['keterangan'] as String,
      data: (json['data'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => ExamData.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$ReportModelsImplToJson(_$ReportModelsImpl instance) =>
    <String, dynamic>{
      'keterangan': instance.keterangan,
      'data': instance.data,
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
      mapel: json['mapel'] as String,
      guru: json['guru'] as String,
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
      'guru': instance.guru,
    };
