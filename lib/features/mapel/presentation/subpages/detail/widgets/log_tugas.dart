import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'widget.dart';

// ignore: must_be_immutable
class LogTugas extends StatelessWidget {
  Pelajaran data;

  LogTugas({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapelBloc, MapelState>(
      builder: (context, state) {
        final presensi = state.presensiData;
        final presensiyangadatugas =
            presensi.where((element) => element.is_tugas == 1).toList();
        return Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuildRow(label: "Pertemuan", customeWidth: 120),
                    BuildRow(label: "Status", customeWidth: 120),
                    BuildRow(label: "file", customeWidth: 120),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: presensiyangadatugas.length,
                  itemBuilder: (context, index) {
                    var i = presensiyangadatugas[index];
                    return Container(
                      color: AppColors.neutral.ne01,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BuildRowField(
                            item: 'Pertemuan ${i.pertemuan.toString()}',
                            customeWidth: 120,
                          ),
                          BuildRowField(
                            item: i.status == 1 ? 'Mengumpulkan' : 'Belum',
                            customeWidth: 120,
                          ),
                          BuildRowField(
                            item: i.status == 0 ? '-' : 'Open',
                            // customeWidth: 120,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
