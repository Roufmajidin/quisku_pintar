part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial({
    @Default(<Pelajaran>[]) List<Pelajaran> fetchMapel,
    @Default(FetchStatus.initial) FetchStatus fetchMapelStatus,
  }) = _Initial;
}
