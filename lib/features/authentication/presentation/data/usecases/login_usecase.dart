import 'dart:developer';

import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/repositories/auth_repositroy_impl.dart';

import '../models/token.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthRepositoryImpl authrepository;
  LoginUseCase(this.authrepository);

  Future<Either<Failure, TokenModels>> loginUseCase(
      String email, String password) async {
    log('authImpl');
    return await authrepository.loginUser(email: email, password: password);
  }
}
