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
}
