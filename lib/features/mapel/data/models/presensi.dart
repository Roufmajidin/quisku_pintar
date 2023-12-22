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
    required int is_tugas,
    required String file,
    required String file_tugas,
    DateTime? updated_at,
  }) = _Presensi;
  factory Presensi.fromJson(Map<String, dynamic> json) =>
      _$PresensiFromJson(json);
}
    // ignore: non_constant_identifier_names
    // ignore: non_constant_identifier_names
    // ignore: non_constant_identifier_names
    // ignore: non_constant_identifier_names
