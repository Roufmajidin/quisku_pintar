import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/models/question.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/bloc/ujian_bloc.dart';

// ignore: must_be_immutable
class ChipsWidget extends StatefulWidget {
  List<Question> data;

  ChipsWidget({
    super.key,
    required this.size,
    required this.data,
  });

  final Size size;

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  PageController pageController = PageController();
  int currentQuestion = 0;
  List<int?> selectedOptions = List.generate(4, (index) => null);
  @override
  void initState() {
    super.initState();
    // context.read<UjianBloc>().add(onLoad(currentQuestion));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UjianBloc, UjianState>(
      builder: (context, state) {
        return Column(
          children: [
            // ProgressWidget(
            //   progres: currentQuestionIndex == 0 ? 1 : currentQuestionIndex + 1,
            //   lengthQuestion: widget.data.length,
            // ),
            SizedBox(
              height: 650,
              child: Stack(
                children: [
                  SizedBox(
                      height: 650,
                      child: PageView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: widget.data.length,
                        controller: pageController,
                        itemBuilder: (context, index) {
                          if (index != currentQuestion) {
                            return const SizedBox.shrink();
                          }
                          var opsi = widget.data[index].opsi;
                          var pertanyaan = widget.data[index].pertanyaan;

                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 24, bottom: 34),
                                  child: Text(
                                    pertanyaan,
                                    style: AppTextStyle.body2.setSemiBold(),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(opsi.length, (i) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 12),
                                      child: FilterChip(
                                        side: BorderSide(
                                          color: AppColors.neutral.ne13,
                                        ),
                                        label: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              opsi[i],
                                              style:
                                                  const TextStyle(fontSize: 13)
                                                      .copyWith(
                                                          color: AppColors
                                                              .neutral.ne09)
                                                      .setMedium(),
                                            ),
                                          ),
                                        ),
                                        selected: selectedOptions[index] == i,
                                        onSelected: (selected) {
                                          setState(() {
                                            final selectedOption =
                                                selectedOptions[index];
                                            final jawaban = opsi[i];
                                            if (selectedOption == i) {
                                              null;
                                            } else {
                                              selectedOptions[index] = i;
                                            }

                                            // context.read<UjianBloc>().add(
                                            //     OnSelectedOption(
                                            //         i,
                                            //         currentQuestion,
                                            //         currentQuestion));

                                            // log('User c : ${index}');
                                            context
                                                .read<UjianBloc>()
                                                .add(onLoad(currentQuestion));
                                          });
                                          context.read<UjianBloc>().add(
                                              AddAnswer(i, currentQuestion));
                                        },
                                        selectedColor: AppColors.primary.pr03,
                                        showCheckmark: false,
                                        backgroundColor:
                                            selectedOptions[index] == i
                                                ? AppColors.primary.pr03
                                                : Colors.white,
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentQuestion == 0) const SizedBox(),
                if (currentQuestion != 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (currentQuestion > 0) {
                          currentQuestion--;
                          pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease);
                        }
                      });
                    },
                    child: Text('back'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (currentQuestion < widget.data.length - 1) {
                        currentQuestion++;
                        context.read<UjianBloc>().add(onLoad(currentQuestion));

                        pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }
                    });
                  },
                  child: Text(currentQuestion == widget.data.length - 1
                      ? "selesai"
                      : 'Next'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
