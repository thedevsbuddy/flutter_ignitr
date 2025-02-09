import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/shared.dart';
import '../auth_module.dart';
// import '../services/auth_service.dart';

class ForgotPasswordController extends AppController {
  /// Create and get the instance of the controller
  static ForgotPasswordController get instance {
    if (!Get.isRegistered<ForgotPasswordController>()) Get.put(ForgotPasswordController());
    return Get.find<ForgotPasswordController>();
  }

  /// Initialise [AuthModule] service
  // final AuthService _authService = AuthService.instance;

  /// Props
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailInput = TextEditingController();

  Future<void> submit() async {
    if (!formKey.currentState!.validate()) return;

    Get.offNamed(AuthRoutes.verifyCode, parameters: {'email': emailInput.text});
  }
}
