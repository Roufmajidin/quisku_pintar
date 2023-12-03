part of 'ujian_bloc.dart';

@freezed
class UjianState with _$UjianState {
  const factory UjianState.initial({
    @Default(<Ujian>[]) List<Ujian> fetchUjian,
    @Default(FetchStatus.initial) FetchStatus fetchUjianStatus,
  }) = _Initial;
}
