import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/core/error/utils/endpoints.dart';
import 'package:quisku_pintar/features/acara_unik/data/models/ujian_models.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:http/http.dart' as http;

abstract class PelajaranDataSources {}

class PelDatSources implements PelajaranDataSources {
  final Dio dio = Dio();
  final String apiUrl = Endpoints().baseUrl;

  Future<Either<Failure, List<Pelajaran>>> getMapel() async {
    log('final : on GetMapel in PelajaranDataSources');
    try {
      final res = await http.get(Uri.parse('$apiUrl/mapel'));
      if (res.statusCode == 200) {
        final List<dynamic> jsonDataList = jsonDecode(res.body);

        final List<Pelajaran> pelajaranList = jsonDataList
            .map((jsonData) => Pelajaran.fromJson(jsonData))
            .toList();

        log('finals : ${pelajaranList}');
        return right(pelajaranList);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      print(e);
      return const Left(Failure.serverFailure());
    }
  }

  // get ujian by UserId
  Future<Either<Failure, List<Ujian>>> getUjianByUser({required int id}) async {
    try {
      final res = await http.get(Uri.parse('$apiUrl/getExamStatus/$id'));
      if (res.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(res.body);
        final List<Map<String, dynamic>> result = List.from(jsonData);
        final List<Ujian> ujianList =
            result.map((e) => Ujian.fromJson(e)).toList();
        return right(ujianList);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      print(e);
      return const Left(Failure.serverFailure());
    }
  }
}
