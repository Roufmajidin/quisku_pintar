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
      'updated_at': instance.updated_at?.toIso8601String(),
    };
