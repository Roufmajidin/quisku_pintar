import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/font_weight.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/report_nilai/presentation/transkip_nilai/widgets/widgets.dart';

import '../widgets/report_nilai.dart';

class TranskipNilaiView extends StatefulWidget {
  const TranskipNilaiView({super.key});

  @override
  State<TranskipNilaiView> createState() => _TranskipNilaiViewState();
}

class _TranskipNilaiViewState extends State<TranskipNilaiView> {
  int initialIndex = 0;
  void changeIndexTab({required int index}) {
    initialIndex = index;
    setState(() {});
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
                  changeIndexTab(index: v);
                  // trigger
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: const TabBarView(children: [
                  ReportNilai(),
                  Text('b'),
                  Text('v'),
                  Text('d'),
                ]),
              )
            ],
          ),
        ));
  }
}
