import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_models.freezed.dart';
part 'report_models.g.dart';

@freezed
abstract class ReportModels with _$ReportModels {
  factory ReportModels({
    required Map<String, SemesterData> semester,
  }) = _ReportModels;
  factory ReportModels.fromJson(Map<String, dynamic> json) =>
      _$ReportModelsFromJson(json);
}

@freezed
abstract class SemesterData with _$SemesterData {
  factory SemesterData({
    required Map<String, Map<String, ExamData>> data_pas,
    required List<Map<String, ExamData>> data_pts,
  }) = _SemesterData;
  factory SemesterData.fromJson(Map<String, dynamic> json) =>
      _$SemesterDataFromJson(json);
}

@freezed
class ExamData with _$ExamData {
  factory ExamData({
    required String keterangan_ujian,
    required int semester,
    required int siswa_id,
    required String jawaban,
    required int selesai,
    required String created_at,
    required String updated_at,
    required int mapel_id,
    required int nilai,
    required MapelData mapel,
  }) = _ExamData;

  factory ExamData.fromJson(Map<String, dynamic> json) =>
      _$ExamDataFromJson(json);
}

@freezed
class MapelData with _$MapelData {
  factory MapelData({
    required int id,
    required String nama_mapel,
    required String nama_guru,
  }) = _MapelData;

  factory MapelData.fromJson(Map<String, dynamic> json) =>
      _$MapelDataFromJson(json);
}
