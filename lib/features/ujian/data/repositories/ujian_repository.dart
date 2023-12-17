import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/mapel/data/datasources/mapel_datasources.dart';

import '../../presentation/subpages/question_screen/data/models/question.dart';
import '../models/ujian_models.dart';

abstract class UjianRepository {
  // get by userId
  Future<Either<Failure, List<Ujian>>> getUjian({required int id});
  // get by mapelid
  Future<Either<Failure, List<Question>>> getQuestion({required int id});
}
