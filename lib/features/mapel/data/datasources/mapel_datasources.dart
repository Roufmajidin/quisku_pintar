import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/mapel/data/models/presensi.dart';
import 'package:http/http.dart' as http;

class MapelDatasources {
  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  Future<Either<Failure, List<Presensi>>> getPresensi(
      {required int userId, required int mapelId}) async {
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
        final List<Map<String, dynamic>> result =
            List.from(jsonDataList['data']);
        final List<Presensi> presensi =
            result.map((e) => Presensi.fromJson(e)).toList();
        return right(presensi);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      return const Left(Failure.serverFailure());
    }
  }
}
