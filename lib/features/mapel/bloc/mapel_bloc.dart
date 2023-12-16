import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';

part 'mapel_event.dart';
part 'mapel_state.dart';
part 'mapel_bloc.freezed.dart';

class MapelBloc extends Bloc<MapelEvent, MapelState> {
  MapelBloc() : super(_Initial()) {
    on<MapelEvent>((event, emit) {});
    on<FetchPresensi>(_fetchPresensi);
  }
  void _fetchPresensi(MapelEvent event, Emitter<MapelState> emit) {
    log('fetch prenssi');
  }
}
