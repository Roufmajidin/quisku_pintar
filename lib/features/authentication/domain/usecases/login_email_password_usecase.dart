import 'package:dartz/dartz.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/services/services.dart';
import '../../data/models/token/token_model.dart';
import '../repositories/authentication_repository.dart';

class LoginEmailPasswordUseCase {
  final AuthenticationRepository _repository;
  final TokenCacheService _tokenCacheService;

  const LoginEmailPasswordUseCase(
    this._repository,
    this._tokenCacheService,
  );

  Future<Either<Failure, Token>> call({
    required String email,
    required String password,
  }) async {
    final result = await _repository.loginWithEmailAndPassword(
      email: email,
      password: password,
    );

    // get token and save to local storage
    if (result.isRight()) {
      final token = result.getOrElse(() => const Token());
      await _tokenCacheService.saveToken(token);
    }

    return result;
  }
}
