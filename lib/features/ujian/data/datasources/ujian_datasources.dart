import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:http/http.dart' as http;
import 'package:quisku_pintar/features/ujian/presentation/subpages/question_screen/data/models/question.dart';

import '../../presentation/subpages/question_screen/data/answer_models/annswer_model.dart';
import '../models/ujian_models.dart';

abstract class UjianDataSources {}

class UjianDS implements UjianDataSources {
  final Dio dio = Dio();
  // final String? apiUrl = Endpoints().baseUrl;
  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  // get ujian by UserId
  Future<Either<Failure, List<Ujian>>> getUjianByUser({required int id}) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    //
    try {
      String jenisUjian = await getTypeUjian();
      final res =
          await http.get(Uri.parse('$urlLink/getExamStatus/$id/$jenisUjian'));
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
      log(res.statusCode.toString());
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      // print(e);
      return const Left(Failure.serverFailure());
    }
  }

  // get type ujian
  Future<String> getTypeUjian() async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    final getActiveUjian = await http.get(Uri.parse('$urlLink/getActiveUjian'));
    final Map<String, dynamic> activeUjian = jsonDecode(getActiveUjian.body);
    String u = '';
    for (var element in activeUjian['data']) {
      String jenisUjian = element['ujian'];
      u = jenisUjian;
      log('type ujian ${jenisUjian}');
    }
    return u;
  }

  // get question
  Future<Either<Failure, List<Question>>> getQuestion(
      {required mapelId}) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);

    try {
      final res = await http.get(Uri.parse('$urlLink/detail/$mapelId'));
      if (res.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(res.body);
        // final List<Map<String, dynamic>> result =
        //     List.from(jsonDataList['data']);
        final List<Question> questionList =
            jsonData.map((e) => Question.fromJson(e)).toList();
        log('QUESTION : ${questionList.toString()}');
        return right(questionList);
      }
      log(res.statusCode.toString());
      return const Left(Failure.parsingFailure(message: "Data Gagal Dimuat"));
    } catch (e) {
      print(e);
      return const Left(Failure.serverFailure());
    }

    // return right(r)
  }

  Future<int> postData({
    required int id,
    required int mapelId,
    required AnswerModels modelsAnswer,
  }) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    // TODO https://eae6-114-124-212-117.ngrok-free.app/api/exam/postData/2/1
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String urlLink = json.decode(respons.body);
    int statusCode = 0;
    log(modelsAnswer.answers.toString());
    final a = json.encode(modelsAnswer.answers);
    final nilai = json.encode(modelsAnswer.nilaiAkhir);
    try {
      final res = await http.post(
        Uri.parse('$urlLink/postData/$id/$mapelId'),
        body: {
          'jawaban': a.toString(),
          'nilai': nilai.toString(),
        },
      );
      // log(nilai);

      if (res.statusCode == 200) {
        statusCode = res.statusCode;
      }
    } catch (e) {
      return 401;
    }
    log(respons.statusCode.toString());
    return statusCode;

    // log(id.toString());
    // final List<Map<String, dynamic>> data = model.;
  }
}
