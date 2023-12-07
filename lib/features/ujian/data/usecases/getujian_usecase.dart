import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/answer_models/annswer_model.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/models/question.dart';

import '../models/ujian_models.dart';
import '../repositories/ujian_repository_impl.dart';

class GetUjianUsecase {
  final UjianRepositoryImpl pelre;
  GetUjianUsecase({
    required this.pelre,
  });
  Future<Either<Failure, List<Ujian>>> getUjian(id) async {
    return await pelre.getUjian(id: id);
  }

  Future<Either<Failure, List<Question>>> getQuestion(id) async {
    return await pelre.getQuestion(id: id);
  }

  Future<int> postJawaban(
      {required int id,
      required int mapelId,
      required AnswerModels models}) async {
    return await pelre.postAnswer(
        id: id, mapelId: mapelId, modelsAnswer: models);
  }
}
