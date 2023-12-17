import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/answer_models/annswer_model.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/models/question.dart';

import '../datasources/ujian_datasources.dart';
import '../models/ujian_models.dart';
import 'ujian_repository.dart';

class UjianRepositoryImpl implements UjianRepository {
  final UjianDS ujianDataSources;
  UjianRepositoryImpl({required this.ujianDataSources});

  @override
  Future<Either<Failure, List<Ujian>>> getUjian({required int id}) async {
    // TODO: implement getUjian     GET UJIAN BY ID USER
    try {
      final res = await ujianDataSources.getUjianByUser(id: id);
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }

  @override
  Future<Either<Failure, List<Question>>> getQuestion({required int id}) async {
    // TODO: implement getQUestion GET UJIAN BY MAPEL ID
    try {
      final res = await ujianDataSources.getQuestion(mapelId: id);
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }

  Future<int> postAnswer({
    required int id,
    required int mapelId,
    required int idUjian,
    required AnswerModels modelsAnswer,
  }) async {
    final res = await ujianDataSources.postData(
        id: id, mapelId: mapelId, modelsAnswer: modelsAnswer, idUjian: idUjian);
    if (res == 200) {
      return res;
    }
    return 401;
  }
}
