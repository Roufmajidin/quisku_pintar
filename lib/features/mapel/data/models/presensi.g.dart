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
      created_at: json['created_at'] as int,
      updated_at: json['updated_at'] as int?,
    );

Map<String, dynamic> _$$PresensiImplToJson(_$PresensiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mapel_id': instance.mapel_id,
      'pertemuan': instance.pertemuan,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
