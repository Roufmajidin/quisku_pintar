import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

import '../widgets/widget.dart';

class QuestionView extends StatefulWidget {
  const QuestionView({super.key});

  @override
  State<QuestionView> createState() => _QuestionViewState();
}

List<Map<String, dynamic>> data = [
  {
    'pertanyaan': 'Apakah Anda tertarik dengan penjelajahan luar angkasa?',
    'jawaban': [
      'Sangat tertarik',
      'Tertarik',
      'Kurang tertarik',
      'Tidak tertarik',
    ],
  },
  {
    'pertanyaan': 'Apa yang menurut Anda paling menarik dari luar angkasa?',
    'jawaban': [
      'Galaksi',
      'Bintang-bintang',
      'Planet',
      'Teleskop luar angkasa',
      'Lainnya',
    ],
  },
  {
    'pertanyaan':
        'Apakah Anda pernah mengamati langit malam untuk melihat bintang dan planet?',
    'jawaban': [
      'Sering',
      'Kadang-kadang',
      'Jarang',
      'Tidak pernah',
    ],
  },
];

class _QuestionViewState extends State<QuestionView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Test',
          style: AppTextStyle.body2.setSemiBold(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChipsWidget(
                size: size,
                data: data,
              )
            ],
          ),
        ),
      ),
    );
  }
}
