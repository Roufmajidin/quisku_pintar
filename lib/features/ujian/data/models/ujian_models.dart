import 'package:freezed_annotation/freezed_annotation.dart';

part 'ujian_models.g.dart';
part 'ujian_models.freezed.dart';

@freezed
abstract class Ujian with _$Ujian {
  factory Ujian({
    required int id,
    required String user_id,
    required String user_name,
    required String mapel,
    required int mapel_id,
    required String images,
    required String guru,
    required int nilai,
    required String status,
  }) = _Ujian;
  factory Ujian.fromJson(Map<String, dynamic> json) => _$UjianFromJson(json);
}
