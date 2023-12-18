import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';

abstract class MapelRepository {
  Future<Either<Failure, List<Presensi>>> getPresensi(
      {required int userId, required int mapelId});
  // todo: post data absen
  Future<Either<Failure, int>> postPresensi({required int? idAbsen});
}
