import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/core/error/utils/endpoints.dart';
import 'package:quisku_pintar/features/dashboard/data/models/pelajaran.dart';
import 'package:http/http.dart' as http;

abstract class PelajaranDataSources {}

class PelDatSources extends PelajaranDataSources {
  final Dio dio = Dio();
  final String apiUrl = Endpoints().baseUrl;

  Future<Either<Failure, Pelajaran>> getMapel() async {
    log('final : on GetMapel in PelajaranDataSources');
    try {
      final res = await http.get(Uri.parse('$apiUrl/mapel'));
      if (res.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(res.body);
        final id = data['id'];
        final guru = data['guru'];
        final mapel = data['mapel'];

        final hasData = Pelajaran.fromJson(data);
        return right(hasData);
      }
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      print(e);
      return const Left(Failure.serverFailure());
    }
  }
}
