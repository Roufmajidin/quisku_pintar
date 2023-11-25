import 'dart:convert';
import 'dart:developer';

import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

abstract class AuthenticationDataS {}

class AuthenticationDataSources implements AuthenticationDataS {
  final Dio dio = Dio();
  // String apiUrl = 'http://10.0.2.2/api/exam/login';
  @override
  Future<Either<Failure, TokenModels>> loginEmailPassword(
      String email, String password) async {
    log('panggil dt source $email');

    String apiUrl = 'http://192.168.0.116:8000/api/exam/login';
    try {
      final response = await http.post(Uri.parse(apiUrl), body: {
        'email': email,
        'password': password,
      });
      log('panggil dt source ${response.statusCode}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final m = data['message'];
        final at = data['access_token'];
        final t = data['token_type'];
        final tokenHasLogin =
            TokenModels(message: m, accesToken: at, tokenType: t);
        log('data : $data');
        return right(tokenHasLogin);
      } else {
        log('salah');

        return const Left(
            Failure.parsingFailure(message: "This email hasn't verified"));
      }
    } catch (e) {
      log('data');

      return Left(const Failure.serverFailure());
    }
  }
}
