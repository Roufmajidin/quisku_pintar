import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:lxp_mobile/core/error/failure/failure.dart';

import 'package:lxp_mobile/features/authentication/data/models/token/token_model.dart';

import '../../../../core/error/exeption/exception.dart';
import '../../domain/repositories/authentication_repository.dart';
import '../datasources/remote/authentication_remote_data_source.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final AuthenticationRemoteDataSource _remoteDataSource;

  AuthenticationRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, Token>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final result = await _remoteDataSource.loginWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(result);
    } on NetworkException {
      return const Left(ConnectionFailure());
    } on DioException catch (e) {
      final message = e.response?.data['message'];
      return Left(ServerFailure(message: message));
    } catch (e) {
      return const Left(ParsingFailure());
    }
  }
}
