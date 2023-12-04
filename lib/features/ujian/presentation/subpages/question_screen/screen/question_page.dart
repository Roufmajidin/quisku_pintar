import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'question_view.dart';

@RoutePage()
class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const QuestionView();
  }
}
