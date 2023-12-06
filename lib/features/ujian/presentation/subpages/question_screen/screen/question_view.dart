import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/bloc/ujian_bloc.dart';

import '../widgets/widget.dart';

class QuestionView extends StatefulWidget {
  int ujianId;

  QuestionView({super.key, required this.ujianId});

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
  // int id = widget.ujianId.;

  @override
  void initState() {
    super.initState();
    getExamQuestion();
  }

  void getExamQuestion() {
    context.read<UjianBloc>().add(GetDetailUjian(widget.ujianId));
  }

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
      body: BlocBuilder<UjianBloc, UjianState>(
        builder: (context, state) {
          if (state.fetchUjianStatus == FetchStatus.loading) {
            return SizedBox(
                height: MediaQuery.of(context).size.height,
                child: const Center(child: CircularProgressIndicator()));
          }
          if (state.fetchUjianStatus == FetchStatus.failure) {
            return SizedBox(
                height: MediaQuery.of(context).size.height,
                child:
                    Center(child: Assets.images.serviceU.image(height: 300)));
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ChipsWidget(
                    size: size,
                    data: state.fetchQuestion,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
