import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/acara_unik/data/datasources/ujian_datasources.dart';
import 'package:quisku_pintar/features/acara_unik/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/acara_unik/data/repositories/ujian_repository.dart';
import 'package:quisku_pintar/features/dashboard/data/datasources/pelajaran_datasources.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/dashboard/data/repositories/pelajaran_repository.dart';

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
