part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.started() = _Started;
  const factory DashboardEvent.getMapel() = _GetMapel;
  const factory DashboardEvent.getUjianUser() = _GetUjian;
}
