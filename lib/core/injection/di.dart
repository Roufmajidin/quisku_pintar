import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/authentication/data/datasources/remote/authentication_remote_data_source.dart';
import '../../features/authentication/data/repositories/authentication_repository.dart';
import '../../features/authentication/domain/repositories/authentication_repository.dart';
import '../../features/authentication/domain/usecases/login_email_password_usecase.dart';

import '../../features/authentication/presentation/login/controllers/bloc/login_bloc.dart';
import '../navigation/app_router.dart';
import '../network/network_request.dart';
import '../services/google_auth_service.dart';
import '../services/token_cache_service.dart';

part 'service_locator.dart';
part 'sl_authentication.dart';
