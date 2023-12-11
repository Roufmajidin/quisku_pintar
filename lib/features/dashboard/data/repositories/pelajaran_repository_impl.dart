import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/dashboard/data/datasources/pelajaran_datasources.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
// import 'package:quisku_pintar/features/dashboard/data/repositories/pelajaran_repository.dart';

import '../../../ujian/data/models/ujian_models.dart';

class PelajaranRepositoryImpl {
  final PelajaranDataSources pelajaranDataSources = PelajaranDataSources();

  Future<Either<Failure, List<Pelajaran>>> getMapel(
      {required int userId}) async {
    // TODO: implement getMapel
    log('on PelajaranRepositoryImpl to getMapelDataSources');
    try {
      final res = await pelajaranDataSources.getMapel(userId: userId);

      return res;
    } catch (e) {
      print(e);
      return const Left(Failure.parsingFailure());
    }
  }

  Future<Either<Failure, List<Ujian>>> getUjian({required int id}) async {
    // TODO: implement getUjian
    try {
      final res = await pelajaranDataSources.getUjianByUser(id: id);
      return res;
    } catch (e) {
      print(e);
      return const Left(Failure.parsingFailure());
    }
  }
}
