import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ua_client_hints/ua_client_hints.dart';

import '../../common/extensions/extensions.dart';
import '../error/exeption/exception.dart';
import '../services/google_auth_service.dart';
import '../services/services.dart';
import '../utils/endpoints.dart';

part 'logger.dart';
part 'wrapper.dart';

abstract class NetworkRequest {
  Future<Dio> execute([bool requiresAuthToken = false]);
}

class NetworkRequestImpl implements NetworkRequest {
  final TokenCacheService _tokenService;
  final ConnectivityResult _connectionResult;
  final GoogleAuthService _googleAuthService;

  NetworkRequestImpl(
    this._tokenService,
    this._connectionResult,
    this._googleAuthService,
  );

  final _dio = Dio();
  final _timeoutDuration = const Duration(seconds: 30);

  @override
  Future<Dio> execute([bool requiresAuthToken = false]) async {
    final connected = _connectionResult.isConnected;

    if (!connected) throw NetworkException();
    if (requiresAuthToken) await _updateAuthorization();

    // options
    _dio.options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      headers: {
        'Accept': 'application/json',
      },
      connectTimeout: _timeoutDuration,
      receiveTimeout: _timeoutDuration,
    );

    // add interceptors
    _dio
      ..interceptors.add(_LogInterceptor())
      ..interceptors.add(_InterceptorsWrapper(_unauthorizedHandler));

    return _dio;
  }

  Future<void> _updateAuthorization() async {
    final status = _tokenService.status;
    final token = _tokenService.token;

    if (token == null) return;

    String accessToken = '';

    if (status.isNotExpired) {
      accessToken = token.accessToken;
    }

    if (status.isExpired) {
      // final refreshToken = token.refreshToken;
      // final refreshAccessTokenUseCase = sl<RefreshAccessTokenUseCase>();

      // request refresh token
      // final newToken = await refreshAccessTokenUseCase
      //     .call(refreshToken)
      //     .then((result) => result.getOrElse(() => const Token()));

      // set new access token
      // accessToken = newToken.accessToken;

      // update local token
      // await _tokenService.saveToken(newToken);
    }

    if (accessToken.isNotEmpty) {
      _dio.options.headers['authorization'] = 'Bearer $accessToken';
    }
  }

  Future<void> _unauthorizedHandler() async {
    await _googleAuthService.signOut();
    await _tokenService.deleteToken();
    // remove other data from local storage

    // navigate to LoginRoute
    // final appRouter = sl<AppRouter>();
    // await appRouter.pushAndPopUntil(route, predicate: predicate);
  }
}
