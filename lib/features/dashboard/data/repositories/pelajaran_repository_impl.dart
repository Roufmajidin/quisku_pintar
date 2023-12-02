import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/dashboard/data/datasources/pelajaran_datasources.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/dashboard/data/repositories/pelajaran_repository.dart';

class PelajaranRepositoryImpl implements PelajaranRepository {
  final PelDatSources pelajaranDataSources;
  PelajaranRepositoryImpl({required this.pelajaranDataSources});

  @override
  Future<Either<Failure, List<Pelajaran>>> getMapel() async {
    // TODO: implement getMapel
    log('on PelajaranRepositoryImpl to getMapelDataSources');
    try {
      final res = await pelajaranDataSources.getMapel();

      return res;
    } catch (e) {
      print(e);
      return const Left(Failure.parsingFailure());
    }
  }
}
