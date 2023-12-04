// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      id: json['id'] as int?,
      pelajaran_id: json['pelajaran_id'] as int?,
      opsi: json['opsi'] as List<dynamic>,
      jawaban_benar: json['jawaban_benar'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      mapel: json['mapel'] == null
          ? null
          : Mapel.fromJson(json['mapel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pelajaran_id': instance.pelajaran_id,
      'opsi': instance.opsi,
      'jawaban_benar': instance.jawaban_benar,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'mapel': instance.mapel,
    };

_$MapelImpl _$$MapelImplFromJson(Map<String, dynamic> json) => _$MapelImpl(
      id: json['id'] as int?,
      guru: json['guru'] as String?,
      mapel: json['mapel'] as String?,
      images: json['images'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$MapelImplToJson(_$MapelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guru': instance.guru,
      'mapel': instance.mapel,
      'images': instance.images,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
