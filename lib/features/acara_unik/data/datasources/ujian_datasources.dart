import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/core/error/utils/endpoints.dart';
import 'package:quisku_pintar/features/acara_unik/data/models/ujian_models.dart';
import 'package:http/http.dart' as http;

abstract class UjianDataSources {}

class UjianDS implements UjianDataSources {
  final Dio dio = Dio();
  final String apiUrl = Endpoints().baseUrl;

  // get ujian by UserId
  Future<Either<Failure, List<Ujian>>> getUjianByUser({required int id}) async {
    try {
      final res = await http.get(Uri.parse('$apiUrl/getExamStatus/$id'));
      if (res.statusCode == 200) {
        final Map<String, dynamic> jsonDataList = jsonDecode(res.body);

        // final List<dynamic> jsonData = jsonDecode(res.body);
        final List<Map<String, dynamic>> result =
            List.from(jsonDataList['data']);
        final List<Ujian> ujianList =
            result.map((e) => Ujian.fromJson(e)).toList();
        log(ujianList.toString());
        return right(ujianList);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      print(e);
      return const Left(Failure.serverFailure());
    }
  }
}
