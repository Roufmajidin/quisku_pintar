import 'dart:convert';
import 'dart:developer';

import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../models/user.dart';

abstract class AuthenticationDataS {}

class AuthenticationDataSources implements AuthenticationDataS {
  final Dio dio = Dio();
  String apiUrl = 'http://192.168.0.118:8080/api/exam';

  Future<Either<Failure, TokenModels>> loginEmailPassword(
      String email, String password) async {
    try {
      final response = await http.post(Uri.parse('$apiUrl/login'), body: {
        'email': email,
        'password': password,
      });

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

      return const Left(Failure.serverFailure());
    }
  }

  Future<Either<Failure, User>> getUseLoginDataSources(String token) async {
    try {
      String apiUrrl = 'http://192.168.0.118:8080/api/exam';

      final user = await http.get(
        Uri.parse(
          '$apiUrrl/user',
        ),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      log('session user ${user.statusCode}');
      // if (user.statusCode == 200) {
      final Map<String, dynamic> userData = jsonDecode(user.body);
      final id = userData['id'];
      final name = userData['name'];
      final email = userData['email'];
      final userJson = User(id: id, name: name, email: email);
      log('user data : $userJson');
      return right(userJson);
      // } else {
      // return const Left(Failure.parsingFailure());
      // }
    } catch (e) {
      return const Left(Failure.parsingFailure());
    }
  }
}
