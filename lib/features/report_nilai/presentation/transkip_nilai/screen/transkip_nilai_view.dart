import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/report_nilai/bloc/nilai_bloc.dart';
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/widgets/widgets.dart';

import '../widgets/report_nilai.dart';

class TranskipNilaiView extends StatefulWidget {
  const TranskipNilaiView({super.key});

  @override
  State<TranskipNilaiView> createState() => _TranskipNilaiViewState();
}

class _TranskipNilaiViewState extends State<TranskipNilaiView> {
  int initialIndex = 0;
  int semester = 0;
  @override
  void initState() {
    super.initState();
    changeIndexTab(index: 0, semesterTab: 1);
  }

  void changeIndexTab({required int index, required int semesterTab}) {
    initialIndex = index;
    semester = semesterTab;
    setState(() {
      // if (initialIndex == 0) {
      //   getReport(1);
      // } else {
      // }
      getReport(semesterTab);
    });
  }

  getReport(int a) {
    // int finalTab = 0;

    context.read<NilaiBloc>().add(GetNilaiReport(a));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Transkip Nilai',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 16,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: Column(
            // height: MediaQuery.of(context).size.height,
            children: [
              TabMenu(
                tabList: [
                  ChildTab(label: 'Semester 1'),
                  ChildTab(label: 'Semester 2'),
                  ChildTab(label: 'Semester 3'),
                  ChildTab(label: 'Semester 4'),
                ],
                onChangedTab: (v) {
                  changeIndexTab(
                    index: v,
                    semesterTab: v + 1,
                  );
                  // trigger
                },
              ),
              BlocBuilder<NilaiBloc, NilaiState>(
                builder: (context, state) {
                  if (state.fetchReportStatus == FetchStatus.loading) {
                    return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child:
                            const Center(child: CircularProgressIndicator()));
                  }
                  if (state.reportData.isEmpty ||
                      state.reportData == null ||
                      state.fetchReportStatus == FetchStatus.loading) {
                    return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: const Center(
                            child: Text('semester ini belum ada data')));
                  }
                  if (state.fetchReportStatus.isFailure) {
                    return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Center(
                            child: Assets.images.serviceU.image(height: 300)));
                  }
                  return Expanded(
                      child: TabBarView(
                          children: List.generate(
                    4,
                    (index) => Builder(
                      builder: (context) {
                        return index == 0
                            ? const ReportNilai()
                            : const ReportNilai();
                      },
                    ),
                  )));
                },
              )
            ],
          ),
        ));
  }
}
