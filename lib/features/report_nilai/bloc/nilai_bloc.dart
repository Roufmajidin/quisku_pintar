import 'dart:convert';
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
    on<NilaiEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<GetNilaiReport>(_getReport);
  }
  _getReport(NilaiEvent event, Emitter<NilaiState> emit) async {
    log('report bloc');
    emit(state.copyWith(fetchReportStatus: FetchStatus.loading));
    final token = await loginusecase.getLocalToken();
    var userId = await loginusecase.getLogedUser(token);
    int? uId = 0;
    userId.fold((l) => null, (r) => uId = r.id);

    final res = await reportUsecase.getReportNilai(userId: uId!);
    res.fold(
        (l) => emit(state.copyWith(fetchReportStatus: FetchStatus.failure)),
        (r) {
      emit(state.copyWith(fetchReportStatus: FetchStatus.success));
      // log('ini ${r.toString()}');
      emit(state.copyWith(reportData: r));
    });
    log('bloc data nilai ');
    print(jsonEncode(state.reportData.toList()));
  }
}
