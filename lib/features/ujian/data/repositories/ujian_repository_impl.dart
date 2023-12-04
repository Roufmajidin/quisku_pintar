import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';

import '../datasources/ujian_datasources.dart';
import '../models/ujian_models.dart';
import 'ujian_repository.dart';

class UjianRepositoryImpl implements UjianRepository {
  final UjianDS ujianDataSources;
  UjianRepositoryImpl({required this.ujianDataSources});

  @override
  Future<Either<Failure, List<Ujian>>> getUjian({required int id}) async {
    // TODO: implement getUjian
    try {
      final res = await ujianDataSources.getUjianByUser(id: id);
      return res;
    } catch (e) {
      print(e);
      return const Left(Failure.parsingFailure());
    }
  }
}
