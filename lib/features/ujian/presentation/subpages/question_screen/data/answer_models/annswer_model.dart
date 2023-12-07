class AnswerModels {
  // final int? index;
  // final int? current;
  final List<List<int?>> answers;

  const AnswerModels({
    // this.index,
    // this.current,
    required this.answers,
  });

  AnswerModels copyWith({
    // int? index,
    // int? current,
    List<List<int>>? answers,
  }) {
    return AnswerModels(
      // index: index ?? this.index,
      // current: current ?? this.current,
      answers: answers ?? this.answers,
    );
  }
}
