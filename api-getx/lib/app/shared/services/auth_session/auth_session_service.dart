import 'package:get/get.dart';

import '../../../../config/config.dart';
import '../../models/api_response.dart';
import '../services.dart';

abstract class AuthSessionService extends BaseService {
  /// Define if this is in dev mode
  static bool useLocal = Config.devMode;

  /// Create and get the instance of [AuthSessionService]
  static AuthSessionService get instance {
    InternetService internetService = InternetService.instance;

    if (!Get.isRegistered<AuthSessionService>()) {
      Get.lazyPut<AuthSessionService>(() {
        if (useLocal) return LocalAuthSessionService();
        if (!internetService.isConnected) return LocalAuthSessionService();
        return RemoteAuthSessionService();
      });
    }

    return Get.find<AuthSessionService>();
  }

  /// Get and refresh user data
  Future<ApiResponse> getUser();

  /// Logout the user from system
  Future<ApiResponse> logout();
}
