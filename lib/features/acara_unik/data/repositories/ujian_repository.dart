import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/acara_unik/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';

abstract class UjianRepository {
  Future<Either<Failure, List<Ujian>>> getUjian({required int id});
}
