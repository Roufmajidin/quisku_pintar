import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/dashboard/data/repositories/pelajaran_repository_impl.dart';

import '../../../ujian/data/models/ujian_models.dart';

class GetMapelUsecase {
  final PelajaranRepositoryImpl pelRe = PelajaranRepositoryImpl();
  Future<Either<Failure, List<Pelajaran>>> getMapel({required userId}) async {
    log('on usecase => impl PelajaranRepositoryImpl()');
    return await pelRe.getMapel(userId: userId);
  }

  Future<Either<Failure, List<Ujian>>> getUjian(id) async {
    return await pelRe.getUjian(id: id);
  }
}
