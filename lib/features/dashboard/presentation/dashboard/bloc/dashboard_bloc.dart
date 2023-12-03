import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/acara_unik/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/dashboard/data/usecases/getmapel_usecase.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final GetMapelUsecase getUseCase;
  DashboardBloc(this.getUseCase) : super(const _Initial()) {
    on<_GetMapel>(_getMapel);
  }

  Future<void> _getMapel(_GetMapel event, Emitter<DashboardState> emit) async {
    emit(state.copyWith(fetchMapelStatus: FetchStatus.loading));
    final res = await getUseCase.getMapel();
    // folding bre
    res.fold((l) => emit(state.copyWith(fetchMapelStatus: FetchStatus.failure)),
        (r) {
      // print(r.id);
      List<Pelajaran> pelajaranList = r;
      emit(state.copyWith(
          fetchMapel: pelajaranList, fetchMapelStatus: FetchStatus.success));
    });
  }
}

//
