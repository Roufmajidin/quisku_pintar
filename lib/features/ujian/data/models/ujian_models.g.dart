// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ujian_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UjianImpl _$$UjianImplFromJson(Map<String, dynamic> json) => _$UjianImpl(
      id: json['id'] as int,
      user_id: json['user_id'] as String,
      user_name: json['user_name'] as String,
      mapel: json['mapel'] as String,
      mapel_id: json['mapel_id'] as int,
      images: json['images'] as String,
      guru: json['guru'] as String,
      nilai: json['nilai'] as int,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$UjianImplToJson(_$UjianImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'mapel': instance.mapel,
      'mapel_id': instance.mapel_id,
      'images': instance.images,
      'guru': instance.guru,
      'nilai': instance.nilai,
      'status': instance.status,
    };
