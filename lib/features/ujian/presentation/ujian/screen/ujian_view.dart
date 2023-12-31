import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quisku_pintar/common/extensions/extensions.dart';
import 'package:quisku_pintar/common/themes/themes.dart';
import 'package:quisku_pintar/features/ujian/presentation/ujian/widgets/widget.dart';

import '../bloc/ujian_bloc.dart';

class UjianView extends StatefulWidget {
  const UjianView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UjianViewState createState() => _UjianViewState();
}

class _UjianViewState extends State<UjianView> {
  @override
  void initState() {
    super.initState();
    setState(() {
      getUjian();
    });
  }

  // get ujian
  getUjian() {
    context.read<UjianBloc>().add(const GetUjian());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: AppColors.primary.pr10,
        title: GestureDetector(
          onTap: () {
            // context.read<UjianBloc>().add(GetUjian());
            context.read<UjianBloc>().add(const UjianEvent.getUjianUser());
          },
          child: Text(
            'Ujian Page',
            style: AppTextStyle.body3
                .setSemiBold()
                .copyWith(color: AppColors.neutral.ne01),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RefreshIndicator(
                color: AppColors.primary.pr10,
                onRefresh: () async {
                  getUjian();
                  return Future<void>.delayed(const Duration(seconds: 3));
                },
                child: const UjianList()),
          ],
        ),
      ),
    );
  }
}
