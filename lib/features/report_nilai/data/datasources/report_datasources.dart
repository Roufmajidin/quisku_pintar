import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/report_nilai/data/models/report_models.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class ReportDataSources {
  // final String? apiUrl = Endpoints().baseUrl;
  Future<String> getUrlStringAuto() async {
    const String jsonFirebaseRealtimeDB =
        'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

    final uri = Uri.parse(jsonFirebaseRealtimeDB);
    final response = await http.get(uri);
    final Map<String, dynamic> data = json.decode(response.body);
    return data['data'].toString();
  }

  Future<Either<Failure, List<ReportModels>>> getReportNilai({
    required int userId,
    required int semester,
  }) async {
    log('report dts');

    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final String urlLink = await getUrlStringAuto();
    try {
      final respons =
          await http.get(Uri.parse('$urlLink/getReport/$userId/$semester'));
      final Map<String, dynamic> jsonDaMap = jsonDecode(respons.body);
      if (jsonDaMap['data'] is List && (jsonDaMap['data'] as List).isEmpty) {
        return right([]);
      }
      final Map<String, dynamic> rawData = jsonDaMap['data'];
      // final List<ReportModels> reportList = rawData;

      final List<ReportModels> reportList = rawData.entries.map((entry) {
        final String message = entry.key;
        final List<ExamData> exams = (entry.value as List)
            .map((exam) => ExamData.fromJson(exam))
            .toList();

        return ReportModels(keterangan: message, data: {message: exams});
      }).toList();
      log('rxx $rawData');
      return right(reportList);

      // return right(jsonDaMap['data']);
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
}
