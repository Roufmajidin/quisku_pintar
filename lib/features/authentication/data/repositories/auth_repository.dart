import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';

import '../../presentation/data/models/user.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, TokenModels>> loginUser({
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> getUserLogin({required String token});
}
