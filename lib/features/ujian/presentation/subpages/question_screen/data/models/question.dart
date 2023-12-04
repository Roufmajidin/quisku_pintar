import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
abstract class Question with _$Question {
  factory Question({
    int? id,
    int? pelajaran_id,
    required List opsi,
    required String jawaban_benar,
    required String created_at,
    required String updated_at,
    Mapel? mapel,
  }) = _Question;
  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}

@freezed
abstract class Mapel with _$Mapel {
  factory Mapel({
    int? id,
    String? guru,
    String? mapel,
    String? images,
    String? created_at,
    String? updated_at,
  }) = _Mapel;

  factory Mapel.fromJson(Map<String, dynamic> json) => _$MapelFromJson(json);
}
