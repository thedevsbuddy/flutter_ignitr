import 'package:get/get.dart';

import '../../../../config/config.dart';
import '../../../shared/shared.dart';
import 'remote_profile_service.dart';
import 'local_profile_service.dart';

abstract class ProfileService extends BaseService {
  /// Define if this is in dev mode
  static bool devMode = Config.devMode;

  /// Create and get the instance of [ProfileService]
  static ProfileService get instance {
    InternetService internetService = InternetService.instance;

    if (!Get.isRegistered<ProfileService>()) {
      Get.lazyPut<ProfileService>(() {
        if (devMode) return LocalProfileService();
        if (!internetService.isConnected) return LocalProfileService();
        return RemoteProfileService();
      });
    }

    return Get.find<ProfileService>();
  }

  /// Do Something
  Future<ApiResponse> getData();
}
