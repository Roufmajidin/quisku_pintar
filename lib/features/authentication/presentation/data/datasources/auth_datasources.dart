import 'dart:convert';
import 'dart:developer';

import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../../core/error/utils/endpoints.dart';
import '../models/user.dart';

abstract class AuthenticationDataS {}

class AuthenticationDataSources implements AuthenticationDataS {
  final Dio dio = Dio();
  // String apiUrl = initializeBaseUrl;
  final String jsonFirebaseRealtimeDB =
      'https://sementara-264a2-default-rtdb.firebaseio.com/endpoint_injection.json';

  Future<Either<Failure, TokenModels>> loginEmailPassword(
      String email, String password) async {
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String data = json.decode(respons.body);
    //
    try {
      final response = await http.post(Uri.parse('$data/login'), body: {
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
    // parse link dari realtime database,
    //agar server ngrok lokal bisa autoload pada masing masing device
    final respons = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    final String data = json.decode(respons.body);
    try {
      final user = await http.get(
        Uri.parse(
          '$data/user',
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

  Future<String> initializeBaseUrl() async {
    final response = await http.get(Uri.parse(jsonFirebaseRealtimeDB));
    // Parse the JSON response and extract the baseUrl
    final String data = json.decode(response.body);
    // d = data;

    // Print or use the fetched baseUrl as needed
    print('Fetched baseUrl from Firebase: $data');
    print('Fetched baseUrl from Firebase: $data');

    return data;
  }
}
