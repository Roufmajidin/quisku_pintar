part of 'ujian_bloc.dart';

@freezed
class UjianEvent with _$UjianEvent {
  const factory UjianEvent.started() = _Started;
  const factory UjianEvent.getUjianUser() = GetUjian;
  const factory UjianEvent.getDetailUjian(int id) = GetDetailUjian;

  const factory UjianEvent.updateSelectedOptions(
      List<int?> updatedSelectedOptions) = UpdateSelectedOptions;
  const factory UjianEvent.select(int cur) = onLoad;
  const factory UjianEvent.addAnswer(int i, int u) = AddAnswer;
  factory UjianEvent.postData({required int mapelId, required int id}) =
      PostData;
}
