part of 'mapel_bloc.dart';

@freezed
class MapelState with _$MapelState {
  const factory MapelState.initial({
    @Default(<Presensi>[]) List<Presensi> presensiData,
    @Default(FetchStatus.initial) FetchStatus fetchDataProses,
    @Default(401) statusPost,
    @Default('') String messages,
  }) = _Initial;
}
