import 'package:freezed_annotation/freezed_annotation.dart';

part 'presensi.freezed.dart';
part 'presensi.g.dart';

@freezed
abstract class Presensi with _$Presensi {
  factory Presensi({
    required int id,
    required int mapel_id,
    required int pertemuan,
    required int status,
    required DateTime created_at,
    DateTime? updated_at,
  }) = _Presensi;
  factory Presensi.fromJson(Map<String, dynamic> json) =>
      _$PresensiFromJson(json);
}
