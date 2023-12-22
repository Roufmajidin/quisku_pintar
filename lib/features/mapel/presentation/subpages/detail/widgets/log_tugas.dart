import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/core/error/utils/status.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:quisku_pintar/features/mapel/bloc/mapel_bloc.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:shimmer/shimmer.dart';
import 'widget.dart';

// ignore: must_be_immutable
class LogTugas extends StatelessWidget {
  Pelajaran data;

  LogTugas({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapelBloc, MapelState>(builder: (context, state) {
      final presensi = state.presensiData;
      final presensiyangadatugas =
          presensi.where((element) => element.is_tugas == 1).toList();
      if (state.fetchDataProses == FetchStatus.loading) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Shimmer.fromColors(
              loop: 3,
              period: const Duration(seconds: 4),
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: BuildContentWidget(
                  presensiyangadatugas: presensiyangadatugas, isShimmer: true)),
        );
      }
      return BuildContentWidget(
          presensiyangadatugas: presensiyangadatugas, isShimmer: false);
    });
  }
}

// ignore: must_be_immutable
class BuildContentWidget extends StatelessWidget {
  bool isShimmer;

  BuildContentWidget({
    super.key,
    required this.presensiyangadatugas,
    required this.isShimmer,
  });

  final List<Presensi> presensiyangadatugas;

  @override
  Widget build(BuildContext context) {
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
            height: isShimmer == true ? 2 : 0,
          ),
          SizedBox(
            height: 400,
            child: ListView.builder(
              itemCount: presensiyangadatugas.length,
              itemBuilder: (context, index) {
                var i = presensiyangadatugas[index];
                Color backgroundColor = index % 2 == 0
                    ? Color.fromARGB(179, 253, 248, 248)
                    : Colors.white;
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: isShimmer == true ? 2 : 0),
                  child: Container(
                    color: backgroundColor,
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
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
