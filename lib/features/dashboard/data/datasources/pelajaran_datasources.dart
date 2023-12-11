import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:http/http.dart' as http;

import '../../../ujian/data/models/ujian_models.dart';

class PelajaranDataSources {
  final Dio dio = Dio();
  // final String? apiUrl = Endpoints().baseUrl;
  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  Future<Either<Failure, List<Pelajaran>>> getMapel(
      {required int userId}) async {
    log('final : on GetMapel in PelajaranDataSources');
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    //
    try {
      final res = await http.get(Uri.parse('$urlLink/mapel/$userId'));
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
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    //
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
      print(e);
      return const Left(Failure.serverFailure());
    }
  }
}
