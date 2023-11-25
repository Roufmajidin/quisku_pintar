import 'package:dartz/dartz.dart';
import 'package:quisku_pintar/core/error/failure/failure.dart';
import 'package:quisku_pintar/features/authentication/presentation/data/models/token.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, TokenModels>> loginUser({
    required String email,
    required String password,
  });
}
