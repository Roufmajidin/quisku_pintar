import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';

import '../models/ujian_models.dart';

abstract class UjianRepository {
  Future<Either<Failure, List<Ujian>>> getUjian({required int id});
}
