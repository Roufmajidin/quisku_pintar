import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/report_nilai/data/models/report_models.dart';
import 'package:quisku_pintar/features/report_nilai/data/usecases/report_usecase.dart';

import '../../authentication/presentation/data/usecases/login_usecase.dart';

part 'nilai_event.dart';
part 'nilai_state.dart';
part 'nilai_bloc.freezed.dart';

class NilaiBloc extends Bloc<NilaiEvent, NilaiState> {
  final LoginUseCase loginusecase;

  ReportUsecase reportUsecase;

  NilaiBloc(this.reportUsecase, this.loginusecase) : super(const _Initial()) {
    on<NilaiEvent>((event, emit) {});
    on<GetNilaiReport>(_getReport);
  }
  _getReport(NilaiEvent event, Emitter<NilaiState> emit) async {
    int? semsterReq = (event as GetNilaiReport).semester;

    log('report bloc');
    emit(state.copyWith(fetchReportStatus: FetchStatus.loading));
    final token = await loginusecase.getLocalToken();
    var userId = await loginusecase.getLogedUser(token);
    int? uId = 0;
    userId.fold((l) => null, (r) => uId = r.id);

    final res =
        await reportUsecase.getReportNilai(userId: uId!, semester: semsterReq);
    res.fold(
        (l) => emit(state.copyWith(fetchReportStatus: FetchStatus.failure)),
        (r) {
      log('bloc data nilai $r');

      emit(state.copyWith(fetchReportStatus: FetchStatus.success));
      // log('ini ${r.toString()}');
      // Group the reports by their type (PTS or PAS)
      Map<String, List<ReportModels>> groupedReports = groupReportsByType(r);

      log('PTS Reports: ${groupedReports['PTS']}');
      log('PAS Reports: ${groupedReports['PAS']}');
      emit(state.copyWith(reportData: r));
      emit(state.copyWith(groupedPAS: groupedReports['PAS'] ?? []));
      emit(state.copyWith(groupedPTS: groupedReports['PTS'] ?? []));
    });
    // print(' pas gr ${jsonEncode(state.groupedPAS.toList())}');
    // print(' pas gr ${jsonEncode(state.groupedPTS.toList())}');
    // print(jsonEncode(state.groupedPAS.toList()));
  }

  Map<String, List<ReportModels>> groupReportsByType(
      List<ReportModels> reports) {
    Map<String, List<ReportModels>> groupedReports = {};

    for (var report in reports) {
      String type = report.keterangan;

      groupedReports[type] ??= [];

      groupedReports[type]!.add(report);
    }

    return groupedReports;
  }
}
