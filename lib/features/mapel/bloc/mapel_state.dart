part of 'mapel_bloc.dart';

@freezed
class MapelState with _$MapelState {
  const factory MapelState.initial({
    @Default(<Presensi>[]) List<Presensi> presensiData,
  }) = _Initial;
}
