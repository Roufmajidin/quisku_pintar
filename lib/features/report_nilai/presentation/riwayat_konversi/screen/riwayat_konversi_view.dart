import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class RiwayatKonversiView extends StatelessWidget {
  final List<Map<String, dynamic>> listData = [
    {
      'date': '12 November 2023',
      'totalRequest': '2 pelatihan',
      'status': 'Menunggu',
    },
    {
      'date': '12 November 2023',
      'totalRequest': '2 pelatihan',
      'status': 'Selesai',
    },
    // Add more data items as needed
  ];

  RiwayatKonversiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Riwayat Konversi SKS',
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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primary.pr12,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Terkait Konversi SKS',
                    style: AppTextStyle.body2
                        .setSemiBold()
                        .copyWith(color: AppColors.primary.pr10),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Pilih salah satu atau lebih dari satu pelatihan yang ingin kamu konversi SKS',
                    style: AppTextStyle.body4
                        .setRegular()
                        .copyWith(color: AppColors.primary.pr10),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listData.length,
            itemBuilder: (context, index) {
              final data = listData[index];
              return buildListTile(data);
            },
          ),
        ],
      ),
    );
  }

  Widget buildListTile(Map<String, dynamic> data) {
    final bool isWaiting = data['status'] == 'Menunggu';

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['date'],
                style: AppTextStyle.body3.setSemiBold(),
              ),
              const SizedBox(height: 8),
              Divider(color: AppColors.neutral.ne11),
              const SizedBox(height: 8),
              Text(
                'Total Permintaan',
                style: AppTextStyle.body4.setSemiBold(),
              ),
              const SizedBox(height: 8),
              Text(
                data['totalRequest'],
                style: AppTextStyle.body4.setSemiBold().copyWith(
                      color: AppColors.neutral.ne11,
                    ),
              ),
              const SizedBox(height: 16),
              Text(
                'Status',
                style: AppTextStyle.body4.setSemiBold(),
              ),
              const SizedBox(height: 8),
              Container(
                color: isWaiting
                    ? AppColors.warning.wn10
                    : AppColors.success.scs10,
                width: 84,
                height: 28,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    data['status'],
                    style: AppTextStyle.body4.setMedium().copyWith(
                        color: isWaiting
                            ? AppColors.warning.wn10
                            : AppColors.success.scs10),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Divider(color: AppColors.neutral.ne11),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.icons.unduh.svg(
                      // ignore: deprecated_member_use_from_same_package
                      color: isWaiting
                          ? AppColors.neutral.ne14
                          : AppColors.primary.pr10),
                  const SizedBox(width: 4),
                  Text(
                    'Unduh',
                    style: AppTextStyle.body3.setSemiBold().copyWith(
                        color: isWaiting
                            ? AppColors.neutral.ne14
                            : AppColors.primary.pr10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
