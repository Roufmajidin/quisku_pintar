import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/report_nilai/data/models/report_models.dart';
import 'package:quisku_pintar/features/report_nilai/data/repositories/report_repository_impl.dart';

class ReportUsecase {
  final ReportRepositoryImpl rri = ReportRepositoryImpl();
  Future<Either<Failure, List<ReportModels>>> getReportNilai(
      {required int userId}) async {
    return await rri.getReport(userId: userId);
  }
}
