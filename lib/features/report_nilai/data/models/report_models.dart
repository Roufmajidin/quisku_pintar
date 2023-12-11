import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_models.freezed.dart';
part 'report_models.g.dart';

@freezed
class ReportModels with _$ReportModels {
  factory ReportModels({
    required String keterangan,
    required Map<String, List<ExamData>> data,
  }) = _ReportModels;

  factory ReportModels.fromJson(Map<String, dynamic> json) =>
      _$ReportModelsFromJson(json);
}

@freezed
class ExamData with _$ExamData {
  factory ExamData({
    required String keterangan_ujian,
    required int semester,
    required int siswa_id,
    required dynamic jawaban,
    required int selesai,
    required String created_at,
    required String updated_at,
    required int mapel_id,
    required int nilai,
    // required Mapel mapel,
    required String mapel,
    required String guru,
  }) = _ExamData;

  factory ExamData.fromJson(Map<String, dynamic> json) =>
      _$ExamDataFromJson(json);
}

// @freezed
// class Mapel with _$Mapel {
//   factory Mapel({
//     required int id,
//   }) = _Mapel;

//   factory Mapel.fromJson(Map<String, dynamic> json) => _$MapelFromJson(json);
// }
