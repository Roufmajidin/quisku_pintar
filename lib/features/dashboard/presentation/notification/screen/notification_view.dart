import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lxp_mobile/common/extensions/font_weight.dart';
import 'package:lxp_mobile/common/themes/themes.dart';
import 'package:lxp_mobile/core/navigation/app_router.gr.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List<Map<String, dynamic>> notifications = [
    {
      'title': 'Pelatihan',
      'content': 'Anda baru saja mengikuti program pelatihan!',
      'description':
          'Kami siap membantu anda untuk mencapai tujuan dan meraih kesuksesan.',
      'date': '13 Oktober 2023',
      'isRead': false,
    },
    {
      'title': 'Promosi',
      'content': 'Promo bulan ini',
      'description':
          'Jangan lewatkan kesempatan ini untuk mendapatkan diskon besar-besaran.',
      'date': '13 Oktober 2023',
      'isRead': false,
    },
    {
      'title': 'Pemberitahuan',
      'content': 'Perubahan Kebijakan Privasi',
      'description':
          'Mohon perhatikan perubahan kebijakan privasi kami yang akan berlaku mulai tanggal 1 November 2023.',
      'date': '13 Oktober 2023',
      'isRead': true,
    }
  ];

  Map<int, bool> isTapped = {};

  void _toggleReadStatus(int index) {
    final String title = notifications[index]['title'];
    final String date = notifications[index]['date'];
    final bool isRead = notifications[index]['isRead'];

    if (!isRead || (isRead && isTapped[index] == null)) {
      setState(() {
        notifications[index]['isRead'] = true;
        isTapped[index] = true;
      });

      context.router.push(DetailNotificationRoute(title: title, date: date));
    } else {
      context.router.push(DetailNotificationRoute(title: title, date: date));
    }
  }

  @override
  Widget build(BuildContext context) {
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
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          final bool isRead = notification['isRead'];

          return GestureDetector(
            onTap: () => _toggleReadStatus(index),
            child: Container(
              width: double.infinity,
              height: 134,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1,
                    color: AppColors.neutral.ne13,
                  ),
                ),
                color: isRead ? Colors.white : AppColors.primary.pr12,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          notification['title'] ?? '',
                          style: AppTextStyle.body4.setMedium(),
                        ),
                        const Spacer(),
                        Text(
                          notification['date'] ?? '',
                          style: AppTextStyle.body4
                              .setRegular()
                              .copyWith(color: AppColors.neutral.ne15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      notification['content'] ?? '',
                      style: AppTextStyle.body3.setMedium(),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      notification['description'] ?? '',
                      style: AppTextStyle.body4
                          .setRegular()
                          .copyWith(color: AppColors.neutral.ne15),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
