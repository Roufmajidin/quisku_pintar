import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';

class contentContact extends StatelessWidget {
  const contentContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Detail Acara
          Text(
            'Kontak Acara',
            style: AppTextStyle.body3.setSemiBold(),
          ),
          const SizedBox(
            height: 16,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
            child: Container(
              height: 150,
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
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: AppColors.neutral.ne02, width: 1))),
                      width: double.infinity,
                      height: 37,
                      child: Text(
                        'Abdul - Ketua Panitia',
                        style: AppTextStyle.body3
                            .setSemiBold()
                            .copyWith(color: AppColors.primary.pr10),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'No Telpon',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          '089660302589',
                          style: AppTextStyle.body4.setRegular(),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Alamat Email',
                          style: AppTextStyle.body4.setRegular(),
                        ),
                        Text(
                          'Abduldudul01@gmail.com',
                          style: AppTextStyle.body4.setRegular(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
