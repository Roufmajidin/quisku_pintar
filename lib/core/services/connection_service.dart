import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:lxp_mobile/common/extensions/connectivity_result.dart';

abstract class ConnectionService {
  Future<bool> get isConnected;
}

class ConnectionServiceImpl extends ConnectionService {
  final Connectivity _connectivity;

  ConnectionServiceImpl(this._connectivity);

  @override
  Future<bool> get isConnected => _connectivity.checkConnectivity().then(
        (result) => result.isConnected,
      );
}
