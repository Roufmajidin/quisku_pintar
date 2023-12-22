// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presensi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PresensiImpl _$$PresensiImplFromJson(Map<String, dynamic> json) =>
    _$PresensiImpl(
      id: json['id'] as int,
      mapel_id: json['mapel_id'] as int,
      pertemuan: json['pertemuan'] as int,
      status: json['status'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
      is_tugas: json['is_tugas'] as int,
      file: json['file'] as String,
      file_tugas: json['file_tugas'] as String,
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PresensiImplToJson(_$PresensiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mapel_id': instance.mapel_id,
      'pertemuan': instance.pertemuan,
      'status': instance.status,
      'created_at': instance.created_at.toIso8601String(),
      'is_tugas': instance.is_tugas,
      'file': instance.file,
      'file_tugas': instance.file_tugas,
      'updated_at': instance.updated_at?.toIso8601String(),
    };
