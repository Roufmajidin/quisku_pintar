import 'package:freezed_annotation/freezed_annotation.dart';

part 'presensi.freezed.dart';
part 'presensi.g.dart';

@freezed
abstract class Presensi with _$Presensi {
  factory Presensi({
    required int id,
    // ignore: non_constant_identifier_names
    required int mapel_id,
    required int pertemuan,
    required int status,
    // ignore: non_constant_identifier_names
    required DateTime created_at,
    // ignore: non_constant_identifier_names
    DateTime? updated_at,
  }) = _Presensi;
  factory Presensi.fromJson(Map<String, dynamic> json) =>
      _$PresensiFromJson(json);
}
