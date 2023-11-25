import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/datasources/auth_datasources.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthenticationRepository {
  final AuthenticationDataSources authDataSources;
  AuthRepositoryImpl({required this.authDataSources});
  @override
  Future<Either<Failure, TokenModels>> loginUser(
      {required String email, required String password}) async {
    try {
      final res = await authDataSources.loginEmailPassword(email, password);
      log(res.toString());
      return res;
    } catch (e) {
      return Left(Failure.parsingFailure());
    }
  }
}
