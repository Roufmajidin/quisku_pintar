import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/datasources/auth_datasources.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/user.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/repositories/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSources authDataSources;
  AuthRepositoryImpl({required this.authDataSources});
  @override
  Future<Either<Failure, TokenModels>> loginUser(
      {required String email, required String password}) async {
    try {
      final res = await authDataSources.loginEmailPassword(email, password);
      log(res.toString());
      // data login pada backend hanya return token,  okee sejauh ini kenapa gapake
      // setLokal data peferen
      res.fold((l) => null, (r) => setStringPreference('token', r.accesToken));
      await getToken('token');
      return res;
    } catch (e) {
      return Left(const Failure.parsingFailure());
    }
  }

  @override
  Future<Either<Failure, User>> getUserLogin({required String token}) async {
    // TODO: implement getUserLogin
    try {
      final res = await authDataSources.getUseLoginDataSources(token);
      return res;
    } catch (e) {
      print(e);
      return const Left(Failure.parsingFailure());
    }
  }

  Future<void> setStringPreference(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String> getToken(key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String re = prefs.get(key).toString();
    log('token $re');
    return re;
  }

  // loogout
  Future<bool> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final t = prefs.get('token');
    log('token $t cleared');
    await prefs.remove('token');
    return true;
  }
}
