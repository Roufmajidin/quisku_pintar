import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/data/repositories/mapel_repository_impl.dart';

class MapelUsecase {
  final MapelRepositoryImpl mapelRe = MapelRepositoryImpl();
  // MapelUsecase({required this.mapelRe});
  Future<Either<Failure, List<Presensi>>> getPresensi(
      {required int? userId, required int? mapelId}) async {
    return await mapelRe.getPresensi(userId: userId, mapelId: mapelId);
  }

  // todo : post absen
  Future<Either<Failure, int>> postAbsen({required int? idAbsen}) async {
    log("ok $idAbsen");
    return await mapelRe.postPresensi(idAbsen: idAbsen);
  }

  // todo : post tugas
  Future<Either<Failure, int>> postTugas(
      {required int? idAbsen, required File file}) async {
    return await mapelRe.postTugas(idAbsen: idAbsen, file: file);
  }
}
