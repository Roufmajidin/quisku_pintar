part of 'mapel_bloc.dart';

@freezed
class MapelEvent with _$MapelEvent {
  const factory MapelEvent.started() = _Started;
  const factory MapelEvent.fetchPresensi({int? mapelId}) = FetchPresensi;
  const factory MapelEvent.getMessage({String? messages}) = GetMessages;
  const factory MapelEvent.presenSekarang({int? idAbsen}) = PresentSekarang;
  const factory MapelEvent.postTugas({int? idAbsen, required File file}) =
      PostTugas;
}
