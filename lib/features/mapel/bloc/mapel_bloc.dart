import 'dart:developer';
import 'dart:io';

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
  MapelBloc({required this.mapelUsecase}) : super(const _Initial()) {
    on<FetchPresensi>(_fetchPresensi);
    on<GetMessages>(_getMessages);
    on<PresentSekarang>(_presenSekarang);
    on<PostTugas>(_postTugas);
  }
  // todo : post presensi
  Future<void> _presenSekarang(
      MapelEvent event, Emitter<MapelState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    int? idAbsen = (event as PresentSekarang).idAbsen;
    final res = await mapelUsecase.postAbsen(idAbsen: idAbsen);
    res.fold((l) => emit(state.copyWith(statusPost: 401)), (r) {
      emit(state.copyWith(
          fetchDataProses: FetchStatus.success, statusPost: res));
    });
  }

// todo :: post Tugas
  Future<void> _postTugas(MapelEvent event, Emitter<MapelState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    int? idAbsen = (event as PostTugas).idAbsen;
    File file = (event).file;
    // get userid
    final r = await mapelUsecase.postTugas(idAbsen: idAbsen, file: file);
    log('sukses $r');
    r.fold((l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
        (r) {
      emit(state.copyWith(fetchDataProses: FetchStatus.success, statusPost: r));
    });
  }

  Future<void> _fetchPresensi(
      MapelEvent event, Emitter<MapelState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch prenssi');
    int? mapelId = (event as FetchPresensi).mapelId;
    // get userid
    final String t = await loginUseCase.getLocalToken();
    final getLoged = await loginUseCase.getLogedUser(t);
    int? userId;
    getLoged.fold(
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
        (r) => userId = r.id);
    log('user Id = $userId');
    final getPresensi =
        await mapelUsecase.getPresensi(userId: userId, mapelId: mapelId);

    getPresensi.fold(
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      emit(state.copyWith(
          fetchDataProses: FetchStatus.success, presensiData: r));
    });
  }

  _getMessages(MapelEvent event, Emitter<MapelState> emit) {
    String? mess = (event as GetMessages).messages;

    emit(state.copyWith(messages: mess ?? ''));
  }
}
