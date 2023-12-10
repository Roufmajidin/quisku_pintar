import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/report_nilai/data/models/report_models.dart';
import 'package:http/http.dart' as http;

class ReportDataSources {
  // final String? apiUrl = Endpoints().baseUrl;
  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  Future<Either<Failure, List<ReportModels>>> getReportNilai(
      {required int userId}) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    try {
      final respons = await http.get(Uri.parse('$urlLink/getReport/$userId'));
      if (respons.statusCode == 200) {
        final Map<String, dynamic> jsonDataList = jsonDecode(respons.body);
        final List<Map<String, dynamic>> result =
            List.from(jsonDataList['data']);
        final List<ReportModels> nilaiReport =
            result.map((e) => ReportModels.fromJson(e)).toList();
        // final ReportModels nilaiReport = ReportModels.fromJson(jsonDataList);
        log('report $nilaiReport');
        return right(nilaiReport);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
}
