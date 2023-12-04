import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/usecases/login_usecase.dart';

import '../../../../../core/error/utils/status.dart';
import '../../../data/models/ujian_models.dart';
import '../../../data/usecases/getujian_usecase.dart';

part 'ujian_event.dart';
part 'ujian_state.dart';
part 'ujian_bloc.freezed.dart';

class UjianBloc extends Bloc<UjianEvent, UjianState> {
  final GetUjianUsecase ujianusecase;
  // get usecase login untuk nangkep user;
  final LoginUseCase loginusecase;
  UjianBloc({required this.ujianusecase, required this.loginusecase})
      : super(const _Initial()) {
    on<GetUjian>(_getUjian);
  }
  Future<void> _getUjian(UjianEvent event, Emitter<UjianState> emit) async {
    log('paggil ujianBLoc');
    emit(state.copyWith(fetchUjianStatus: FetchStatus.loading));
    // get userid
    final String t = await loginusecase.getLocalToken();
    final getLoged = await loginusecase.getLogedUser(t);
    // final getUser = getLoged.
    int? userId;
    getLoged.fold(
        (l) => emit(state.copyWith(fetchUjianStatus: FetchStatus.failure)),
        (r) => userId = r.id);

    final resUjian = await ujianusecase.getUjian(userId);
    resUjian.fold(
        (l) => emit(state.copyWith(fetchUjianStatus: FetchStatus.failure)),
        (r) {
      emit(state.copyWith(fetchUjianStatus: FetchStatus.success));

      emit(state.copyWith(fetchUjian: r));
    });
  }
  // TODO fungsi getdetail mapel
  // model => question
  //          enpoint detail/$id;
}
