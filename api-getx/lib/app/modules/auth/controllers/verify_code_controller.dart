import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/shared.dart';
import '../auth_module.dart';
// import '../services/auth_service.dart';

class VerifyCodeController extends AppController {
  /// Create and get the instance of the controller
  static VerifyCodeController get instance {
    if (!Get.isRegistered<VerifyCodeController>()) Get.put(VerifyCodeController());
    return Get.find<VerifyCodeController>();
  }

  /// Initialise [AuthModule] service
  // final AuthService _authService = AuthService.instance;

  /// Props
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController verificationCodeInput = TextEditingController();

  Future<void> submit() async {
    /// TODO: Enable validation when the form is ready
    if (!formKey.currentState!.validate()) return;

    Get.offNamed(AuthRoutes.createPassword);
  }
}
