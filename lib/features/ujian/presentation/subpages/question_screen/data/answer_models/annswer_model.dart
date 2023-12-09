class AnswerModels {
  // final int? index;
  final int nilaiAkhir;
  final List<List<int?>> answers;

  AnswerModels({
    // this.index,
    required this.nilaiAkhir,
    required this.answers,
  });

  AnswerModels copyWith({
    // int? index,
    // int? current,
    required final int nilaiAkhir,
    List<List<int>>? answers,
  }) {
    return AnswerModels(
      // index: index ?? this.index,
      nilaiAkhir: nilaiAkhir,
      answers: answers ?? this.answers,
    );
  }
}
