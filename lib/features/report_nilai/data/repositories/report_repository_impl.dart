import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/report_nilai/data/datasources/Report_datasources.dart';
import 'package:quisku_pintar/features/report_nilai/data/models/report_models.dart';

class ReportRepositoryImpl {
  final ReportDataSources rds = ReportDataSources();
  Future<Either<Failure, List<ReportModels>>> getReport({
    required int userId,
    required int semester,
  }) async {
    log('report impl');

    try {
      final res = await rds.getReportNilai(userId: userId, semester: semester);
      return res;
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
}
