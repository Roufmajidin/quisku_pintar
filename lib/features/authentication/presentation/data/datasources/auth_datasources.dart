import 'dart:convert';
import 'dart:developer';

import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import '../models/user.dart';

abstract class AuthenticationDataS {}

class AuthenticationDataSources implements AuthenticationDataS {
  final Dio dio = Dio();

  Future<String> getUrlStringAuto() async {
    const String jsonFirebaseRealtimeDB =
        'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

    final uri = Uri.parse(jsonFirebaseRealtimeDB);
    final response = await http.get(uri);
    final Map<String, dynamic> data = json.decode(response.body);
    return data['data'].toString();
  }

  Future<Either<Failure, TokenModels>> loginEmailPassword(
      String email, String password) async {
    final urlString = await getUrlStringAuto();
    try {
      final response = await http.post(Uri.parse('$urlString/login'), body: {
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
    final urlString = await getUrlStringAuto();

    try {
      final user = await http.get(
        Uri.parse(
          '$urlString/user',
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
      final semester = userData['semester'];
      final userJson =
          User(id: id, name: name, email: email, semester: semester);
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
