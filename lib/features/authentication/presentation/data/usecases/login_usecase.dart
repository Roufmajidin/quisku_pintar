import 'dart:developer';

import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/user.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/repositories/auth_repositroy_impl.dart';

import '../models/token.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthRepositoryImpl authrepository = AuthRepositoryImpl();

  // LoginUseCase(this.authrepository);

  Future<Either<Failure, TokenModels>> loginUseCase(
      String email, String password) async {
    log('authImpl');
    return await authrepository.loginUser(email: email, password: password);
  }

  Future<Either<Failure, User>> getLogedUser(String token) async {
    return await authrepository.getUserLogin(token: token);
  }

  Future<String> getLocalToken() async {
    return await authrepository.getToken('token');
  }

  Future<bool> logout() async {
    return await authrepository.logout();
  }
}
