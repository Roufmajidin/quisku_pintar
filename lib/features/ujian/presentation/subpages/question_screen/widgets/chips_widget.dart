import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/widgets/widget.dart';

// ignore: must_be_immutable
class ChipsWidget extends StatefulWidget {
  var data;

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
  String selectedFilters = '';
  bool isSelected = false;
  int currentQuestionIndex = 0;
  List<List<bool>> isSelectedList = [];
  List<Map<String, dynamic>> pertanyaanList = [];
  late List<int?> selectedOption;
  bool isBottomVisible = false;

  @override
  void initState() {
    super.initState();
    isSelectedList = List.generate(
      widget.data.length,
      (index) => List.generate(
        widget.data[index]['jawaban'].length,
        (i) => false,
      ),
    );

    selectedOption = List<int?>.filled(widget.data.length, null);

    print('this ${widget.data}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressWidget(
          progres: currentQuestionIndex == 0 ? 1 : currentQuestionIndex + 1,
          lengthQuestion: widget.data.length,
        ),
        SizedBox(
          height: widget.size.height * 0.75,
          child: Stack(
            children: [
              SizedBox(
                  height: widget.size.height * 0.70,
                  child: ListView.builder(
                    itemCount: widget.data.length,
                    itemBuilder: (context, index) {
                      if (index != currentQuestionIndex) {
                        return const SizedBox.shrink();
                      }
                      var opsi = widget.data[index]['jawaban'];
                      var pertanyaan =
                          widget.data[index]['pertanyaan'].toString();

                      List<bool> currentIsSelectedList = isSelectedList[index]!;

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 24, bottom: 34),
                              child: Text(
                                pertanyaan,
                                style: AppTextStyle.body2.setSemiBold(),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(opsi.length, (i) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 12),
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
                                          style: const TextStyle(fontSize: 13)
                                              .copyWith(
                                                color: currentIsSelectedList[i]
                                                    ? AppColors.neutral.ne09
                                                    : AppColors.neutral.ne09,
                                              )
                                              .setMedium(),
                                        ),
                                      ),
                                    ),
                                    selected: selectedOption[index] == i,
                                    onSelected: (selected) {
                                      setState(() {
                                        if (selectedOption[index] == i) {
                                          selectedOption[index] = null;
                                          isBottomVisible = false;
                                        } else {
                                          selectedOption[index] = i;
                                          isBottomVisible = true;
                                        }
                                      });
                                    },
                                    selectedColor: AppColors.primary.pr03,
                                    showCheckmark: false,
                                    backgroundColor: isSelected
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
      ],
    );
  }
}
