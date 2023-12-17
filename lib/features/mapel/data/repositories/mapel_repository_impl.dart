import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/mapel/data/datasources/mapel_datasources.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/data/repositories/mapel_repository.dart';

class MapelRepositoryImpl implements MapelRepository {
  final MapelDatasources mapelData = MapelDatasources();
  // MapelRepositoryImpl({required this.mapelData});
  @override
  Future<Either<Failure, List<Presensi>>> getPresensi(
      {required int userId, required int mapelId}) async {
    // TODO: implement getPresensi
    try {
      final res = await mapelData.getPresensi(userId: userId, mapelId: mapelId);
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
}
