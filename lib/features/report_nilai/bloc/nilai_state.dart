part of 'nilai_bloc.dart';

@freezed
class NilaiState with _$NilaiState {
  const factory NilaiState.initial({
    @Default(<ReportModels>[]) List<ReportModels> reportData,
    @Default(FetchStatus.initial) FetchStatus fetchReportStatus,
  }) = _Initial;
}
