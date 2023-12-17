import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/core/injection/dependency_injection.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:quisku_pintar/features/mapel/data/usecases/mapel_usecase.dart';

part 'mapel_event.dart';
part 'mapel_state.dart';
part 'mapel_bloc.freezed.dart';

class MapelBloc extends Bloc<MapelEvent, MapelState> {
  final MapelUsecase mapelUsecase;
  final LoginUseCase loginUseCase = sl<LoginUseCase>();
  MapelBloc({required this.mapelUsecase}) : super(_Initial()) {
    on<FetchPresensi>(_fetchPresensi);
  }
  Future<void> _fetchPresensi(
      MapelEvent event, Emitter<MapelState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch prenssi');
    // get userid
    final String t = await loginUseCase.getLocalToken();
    final getLoged = await loginUseCase.getLogedUser(t);
    int? userId;
    getLoged.fold(
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
        (r) => userId = r.id);
    log('user Id = $userId');
  }
}
