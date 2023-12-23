import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http_parser/http_parser.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class MapelDatasources {
  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  Future<Either<Failure, List<Presensi>>> getPresensi({
    required int? userId,
    required int? mapelId,
  }) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    //
    try {
      final res =
          await http.get(Uri.parse('$urlLink/fetchAbsen/$userId/$mapelId'));

      if (res.statusCode == 200) {
        final Map<String, dynamic> jsonDataList = jsonDecode(res.body);

        // final Map<String, dynamic> rawData = jsonDataList['data'];
        // log('data ${rawData}');
        // todo : ubah karena pdf link dari return  {{urlLink}}/getPdf/39
        final List<Map<String, dynamic>> result =
            List.from(jsonDataList['data']);
        final List<Presensi> presensiList = result.map((e) {
          e['file'] = '$urlLink/${e['file']}/file-pertemuan';
          e['file_tugas'] = '$urlLink/${e['file_tugas']}/file-tugas';

          // log(jsonDataList['data']);
          return Presensi.fromJson(e);
        }).toList();
        // final List<Map<String, dynamic>> result =
        //     List.from(jsonDataList['data']);
        // final List<Presensi> presensi =
        //     result.map((e) => Presensi.fromJson(e)).toList();
        return right(presensiList);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
  // TODO :: post Absensi byId

  Future<Either<Failure, int>> postPresensi({required int? idAbsen}) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device

    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);

    //
    log('$urlLink/postAbsen/$idAbsen');
    try {
      final res =
          await http.post(Uri.parse('$urlLink/postAbsen/$idAbsen'), body: {
        'waktu_presensi': DateTime.now().toString(),
        // 'status': 1,
      });
      log(res.statusCode.toString());
      if (res.statusCode == 200) {
        return right(res.statusCode);
      }
      return const Left(Failure.parsingFailure(message: "Gagal Post Dimuat"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
  // todo: post tugas siswa

  Future<Either<Failure, int>> postTugas(
      {required int? idAbsen, required File file}) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device

    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);

    //
    log('$urlLink/postTugas/$idAbsen');
    try {
      final request = http.MultipartRequest(
        'POST',
        Uri.parse('$urlLink/postTugas/$idAbsen'),
      );
      final fileStream = http.ByteStream(file.openRead());
      final fileLength = await file.length();
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final fileName = 'pdf_file_$timestamp.pdf';
      final multipartFile = http.MultipartFile(
        'tugas',
        fileStream,
        fileLength,
        filename: fileName,
        contentType: MediaType('application', 'pdf'),
      );
      request.files.add(multipartFile);

      final res = await request.send();
      log(res.statusCode.toString());
      if (res.statusCode == 200) {
        return right(res.statusCode);
      }
      return const Left(Failure.parsingFailure(message: "Gagal Post Data"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
}
