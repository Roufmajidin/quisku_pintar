import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import '../../../ujian/data/models/ujian_models.dart';

class PelajaranDataSources {
  final Dio dio = Dio();
  Future<String> getUrlStringAuto() async {
    const String jsonFirebaseRealtimeDB =
        'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

    final uri = Uri.parse(jsonFirebaseRealtimeDB);
    final response = await http.get(uri);
    final Map<String, dynamic> data = json.decode(response.body);
    return data['data'].toString();
  }

  Future<Either<Failure, List<Pelajaran>>> getMapel(
      {required int userId}) async {
    log('final : on GetMapel in PelajaranDataSources');
    final urlLink = await getUrlStringAuto();

    try {
      final res = await http.get(Uri.parse('$urlLink/mapel/$userId'));
      if (res.statusCode == 200) {
        final List<dynamic> jsonDataList = jsonDecode(res.body);

        final List<Pelajaran> pelajaranList = jsonDataList
            .map((jsonData) => Pelajaran.fromJson(jsonData))
            .toList();

        log('finals : $pelajaranList');
        return right(pelajaranList);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }

  // get ujian by UserId
  Future<Either<Failure, List<Ujian>>> getUjianByUser({required int id}) async {
    //
    final urlLink = await getUrlStringAuto();
    try {
      final res = await http.get(Uri.parse('$urlLink/getExamStatus/$id'));
      if (res.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(res.body);
        final List<Map<String, dynamic>> result = List.from(jsonData);
        final List<Ujian> ujianList =
            result.map((e) => Ujian.fromJson(e)).toList();
        return right(ujianList);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
}
