part of 'ujian_bloc.dart';

@freezed
class UjianState with _$UjianState {
  const factory UjianState.initial({
    @Default(<Ujian>[]) List<Ujian> fetchUjian,
    @Default(<Question>[]) List<Question> fetchQuestion,
    @Default(<AnswerModels>[]) List<AnswerModels> postAnswer,
    @Default(<List<int?>>[]) selectedOptions,
    @Default(0) int currentQuestionIndex,
    @Default(401) examFinish,
    @Default(FetchStatus.initial) FetchStatus fetchUjianStatus,
  }) = _Initial;
}
