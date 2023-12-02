import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';

abstract class PelajaranRepository {
  Future<Either<Failure, Pelajaran>> getMapel();
}
