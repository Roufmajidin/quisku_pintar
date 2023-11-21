import 'package:dartz/dartz.dart';

import '../../../../core/error/failure/failure.dart';
import '../../data/models/token/token_model.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Token>> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}
