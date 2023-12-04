import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';

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
}
