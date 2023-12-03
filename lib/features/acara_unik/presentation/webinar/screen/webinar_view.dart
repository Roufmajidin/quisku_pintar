import 'package:flutter/material.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/gen/assets.gen.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/acara_unik/screen/ujian_view.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/acara_unik/widgets/container_acara.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/acara_unik/widgets/save_button_acara.dart';
import 'package:quisku_pintar/features/acara_unik/presentation/detail_pelatihan/screen/detail_acara_page.dart';

class WebinarView extends StatefulWidget {
  const WebinarView({super.key});

  @override
  State<WebinarView> createState() => _WebinarViewState();
}

class _WebinarViewState extends State<WebinarView> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  void _navigateToDetail(String title) {
    _searchController.clear();
    setState(() {
      _isSearching = false;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailAcaraPage(title: title),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isSearching && _searchController.text.isNotEmpty) {
      filterDataAcara = dataAcara
          .where((acara) => acara['title']!
              .toLowerCase()
              .contains(_searchController.text.toLowerCase()))
          .toList();
    } else {
      filterDataAcara = dataAcara;
    }
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Webinar',
          style: AppTextStyle.body3.setSemiBold(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 44,
                        child: TextFormField(
                          controller: _searchController,
                          onChanged: (value) {
                            if (value.isEmpty) {
                              _searchController.clear();
                              setState(() {
                                _isSearching = false;
                              });
                            } else {
                              setState(() {
                                _isSearching = true;
                              });
                            }
                          },
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Cari Pelatihan..',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColors.neutral.ne03,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: AppColors.neutral.ne03,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColors.neutral.ne03,
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: GestureDetector(
                          onTap: () {
                            _searchController.clear();
                            setState(() {
                              _isSearching = false;
                            });
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.4, // Ubah tinggi menjadi 20% dari tinggi layar
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 16),
                                        child: Center(
                                          child: Container(
                                            width: 32,
                                            height: 4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color: AppColors.neutral.ne11,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Kategori',
                                              style: AppTextStyle.body2
                                                  .setSemiBold(),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Assets.icons.x.svg(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Wrap(
                                          spacing: 8,
                                          runSpacing: 8,
                                          children: [
                                            ChoiceChip(
                                              label: Text(
                                                'Webinar',
                                                style: AppTextStyle.body3
                                                    .setRegular(),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                              ),
                                              selected: false,
                                              onSelected: (bool selected) {
                                                // Handle chip selection
                                              },
                                            ),
                                            ChoiceChip(
                                              label: Text(
                                                'Workshop',
                                                style: AppTextStyle.body3
                                                    .setRegular(),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                              ),
                                              selected: false,
                                              onSelected: (bool selected) {
                                                // Handle chip selection
                                              },
                                            ),
                                            ChoiceChip(
                                              label: Text(
                                                'Seminar',
                                                style: AppTextStyle.body3
                                                    .setRegular(),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                              ),
                                              selected: false,
                                              onSelected: (bool selected) {
                                                // Handle chip selection
                                              },
                                            ),
                                            ChoiceChip(
                                              label: Text(
                                                'Bootcamp',
                                                style: AppTextStyle.body3
                                                    .setRegular(),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                              ),
                                              selected: false,
                                              onSelected: (bool selected) {
                                                // Handle chip selection
                                              },
                                            ),
                                            ChoiceChip(
                                              label: Text(
                                                'Talkshow',
                                                style: AppTextStyle.body3
                                                    .setRegular(),
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(360),
                                              ),
                                              selected: false,
                                              onSelected: (bool selected) {
                                                // Handle chip selection
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      SaveButtonAcara()
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Assets.icons.setting.svg(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.55,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: filterDataAcara.length,
                itemBuilder: (context, index) {
                  final acaraU = filterDataAcara[index];
                  return GestureDetector(
                    onTap: () {
                      _navigateToDetail(acaraU['title']!);
                    },
                    child: ContainerAcara(
                      image: acaraU['image']!,
                      day: acaraU['day']!,
                      time: acaraU['time']!,
                      title: acaraU['title']!,
                      price: acaraU['price']!,
                      keterangan: acaraU['keterangan']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
