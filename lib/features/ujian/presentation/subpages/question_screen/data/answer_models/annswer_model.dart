class AnswerModels {
  final int index;
  final int current;
  final List<Map<String, dynamic>> answers;

  const AnswerModels({
    required this.index,
    required this.current,
    required this.answers,
  });

  AnswerModels copyWith({
    int? index,
    int? current,
    List<Map<String, dynamic>>? answers,
  }) {
    return AnswerModels(
      index: index ?? this.index,
      current: current ?? this.current,
      answers: answers ?? this.answers,
    );
  }
}
