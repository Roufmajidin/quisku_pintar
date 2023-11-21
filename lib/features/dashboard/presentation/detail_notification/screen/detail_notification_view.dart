import 'package:flutter/material.dart';
import 'package:lxp_mobile/common/extensions/font_weight.dart';
import 'package:lxp_mobile/common/themes/themes.dart';

class DetailNotificationView extends StatelessWidget {
  final String title;
  final String date;

  const DetailNotificationView(
      {Key? key, required this.title, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> data = [
      {
        'title1':
            'Anda baru saja mengikuti program pelatihan keterampilan komunikasi!',
        'title2': 'Apa yang Akan Anda Pelajari',
        'title3': 'Manfaat Program',
        'title4': 'Apa yang Harus Anda Lakukan Selanjutnya',
        'content1':
            'Kami sangat senang memberitahu Anda bahwa Anda baru saja bergabung dengan Program Pelatihan Keterampilan Komunikasi kami. Program ini dirancang khusus untuk membantu Anda mengembangkan keterampilan komunikasi yang kuat dan efektif, baik dalam konteks profesional maupun pribadi.',
        'content2':
            'Keterampilan Berbicara: Anda akan memahami teknik-teknik berbicara dengan percaya diri dan penekanan yang benar. Ini termasuk penggunaan suara, bahasa tubuh, dan gaya bicara yang efektif.\nKeterampilan Mendengarkan: Program ini akan membantu Anda menjadi pendengar yang lebih baik, dengan kemampuan untuk memahami dengan baik apa yang disampaikan oleh orang lain, merespons dengan benar, dan mengajukan pertanyaan yang relevan.\nNegosiasi dan Keterampilan Memengaruhi: Anda akan belajar bagaimana mempengaruhi orang lain dengan argumentasi yang kuat, memahami psikologi negosiasi, dan mencapai kesepakatan yang menguntungkan.\nKeterampilan Presentasi: Program ini akan membekali Anda dengan keterampilan presentasi yang luar biasa. Anda akan dapat merancang dan memberikan presentasi yang memikat dan persuasif.\nKeterampilan Komunikasi dalam Tim: Anda akan memahami bagaimana berkomunikasi secara efektif dalam tim, mengelola konflik, dan mencapai tujuan bersama.',
        'content3':
            'Meningkatkan kepercayaan diri dalam berbicara di depan umum.\nMeningkatkan kemampuan untuk mempengaruhi dan meyakinkan orang lain.\nMeningkatkan hubungan pribadi dan profesional Anda melalui komunikasi yang lebih baik.\nMenjadi pendengar yang lebih baik dan memahami dengan lebih baik kebutuhan orang lain.\nMengembangkan keterampilan presentasi yang kuat.',
        'content4':
            'adwal Pelatihan: Pastikan Anda memeriksa jadwal pelatihan Anda dan siapkan diri untuk sesi-sesi pelatihan yang interaktif dan informatif.\nMateri Pelatihan: Anda akan menerima akses ke materi pelatihan yang berkualitas, termasuk panduan, rekaman, dan sumber daya tambahan.\nLatihan: Selain pelatihan, latihan adalah kunci untuk memperkuat keterampilan komunikasi Anda. Manfaatkan latihan mandiri dan peran dalam situasi nyata.',
        'content5':
            'Kami sangat antusias untuk berbagi pengetahuan dan pengalaman dengan Anda dalam perjalanan ini. Jika Anda memiliki pertanyaan atau perlu bantuan lebih lanjut, jangan ragu untuk menghubungi tim pelatihan kami. Selamat belajar!',
      },
    ];
    List<String> content2List = data[0]['content2'].split('\n');
    List<String> content3List = data[0]['content3'].split('\n');
    List<String> content4List = data[0]['content4'].split('\n');
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Notifikasi',
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
            Row(
              children: [
                Container(
                  width: 14,
                  height: 14,
                  decoration: BoxDecoration(
                    color: AppColors.secondary.scGreen.sc12,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: AppTextStyle.body4.setMedium(),
                ),
                const Spacer(),
                Text(
                  date,
                  style: AppTextStyle.body4
                      .setRegular()
                      .copyWith(color: AppColors.neutral.ne15),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              data[0]['title1'] ?? '',
              style: AppTextStyle.body3.setMedium(),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              data[0]['content1'] ?? '',
              style: AppTextStyle.body4.setRegular(),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              data[0]['title2'] ?? '',
              style: AppTextStyle.body3.setMedium(),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content2List.map((item) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                        child: Text(
                          '•',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item.trim(),
                          style: AppTextStyle.body4.setRegular(),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              data[0]['title3'] ?? '',
              style: AppTextStyle.body3.setMedium(),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content3List.map((item) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                        child: Text(
                          '•',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item.trim(),
                          style: AppTextStyle.body4.setRegular(),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              data[0]['title4'] ?? '',
              style: AppTextStyle.body3.setMedium(),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: content4List.map((item) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 8,
                        child: Text(
                          '•',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item.trim(),
                          style: AppTextStyle.body4.setRegular(),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              data[0]['content5'] ?? '',
              style: AppTextStyle.body4.setRegular(),
            ),
          ],
        ));
  }
}
