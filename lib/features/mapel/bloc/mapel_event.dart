part of 'mapel_bloc.dart';

@freezed
class MapelEvent with _$MapelEvent {
  const factory MapelEvent.started() = _Started;
  const factory MapelEvent.fetchPresensi({int? mapelId}) = FetchPresensi;
  const factory MapelEvent.getMessage({String? messages}) = GetMessages;
}
