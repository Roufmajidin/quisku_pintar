part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial({
    @Default(<Pelajaran>[]) List<Pelajaran> fetchMapel,
    @Default(<Ujian>[]) List<Ujian> fetchUjian,
    @Default(FetchStatus.initial) FetchStatus fetchMapelStatus,
    @Default(FetchStatus.initial) FetchStatus onLogoutProses,
  }) = _Initial;
}
