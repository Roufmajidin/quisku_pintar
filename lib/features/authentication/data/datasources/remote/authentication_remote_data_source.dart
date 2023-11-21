import '../../../../../core/network/network_request.dart';
import '../../../../../core/utils/utils.dart';
import '../../models/token/token_model.dart';

abstract class AuthenticationRemoteDataSource {
  Future<Token> loginWithEmailAndPassword({
    required String email,
    required String password,
  });
}

class AuthenticationRemoteDataSourceImpl
    implements AuthenticationRemoteDataSource {
  final NetworkRequest _network;

  AuthenticationRemoteDataSourceImpl(this._network);

  @override
  Future<Token> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    final data = {
      'email': email,
      'password': password,
    };

    final request = await _network.execute();
    final response = await request.post(
      Endpoints.baseUrl,
      data: data,
    ); // dynamic response

    return Token.fromJson(response.data['data']);
  }
}
