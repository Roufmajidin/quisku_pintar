part of 'nilai_bloc.dart';

@freezed
class NilaiEvent with _$NilaiEvent {
  const factory NilaiEvent.started() = _Started;
  const factory NilaiEvent.getNilaiUser(int semester) = GetNilaiReport;
}
