import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/helpers.dart';
import '../../../shared/shared.dart';
import '../auth_module.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = LoginController.instance;

  @override
  Widget build(BuildContext context) {
    var screen = Get.size;

    return Obx(
      () => !controller.internetService.isConnected
          ? NotConnectedErrorPage(
              message: "You need internet connection to access this page.",
              action: () => controller.internetService.checkConnection(),
            )
          : AuthLayout(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: GestureDetector(
                    onTap: () => Keyboard.hide(context),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      color: Colors.transparent,
                      width: double.infinity,
                      height: screen.height - 55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 60),
                              Image.asset(
                                "assets/images/logo.png",
                                // image('logo.png'),
                                width: 75,
                              ),
                              const SizedBox(height: kSpacer),
                              Text("Welcome Back,", style: TextStyl.heading(context).md.semibold),
                              const SizedBox(height: kSpacer1),
                              Text("Sign in to continue", style: TextStyl.body(context).md.regular),
                            ],
                          ),
                          Form(
                            key: controller.formKey,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                FormInput.text(
                                  controller: controller.identifierInput,
                                  placeholder: "Username / Email / Phone",
                                  leading: Icon(FeatherIcons.user),
                                  validator: (value) => Validator("identifier", value!).required().validate(),
                                ),
                                SizedBox(height: 25),
                                FormInput.password(
                                  controller: controller.passwordInput,
                                  placeholder: "Password",
                                  leading: Icon(Icons.lock_outline),
                                  validator: (value) => Validator("password", value!).required().validate(),
                                  action: TextInputAction.done,
                                ),
                                SizedBox(height: 25),
                                Button.block(
                                  key: UniqueKey(),
                                  label: "Login",
                                  onTap: (ButtonController btn) async {
                                    btn.setBusy(true).setDisabled(true);
                                    await controller.submit();
                                    btn.setBusy(false).setDisabled(false);
                                  },
                                ),
                                SizedBox(height: 16),
                                GestureDetector(
                                  onTap: () => Get.offNamed(AuthRoutes.register),
                                  child: Text.rich(
                                    TextSpan(
                                      text: "Don't have an account?",
                                      style: TextStyl.label(context).md.regular,
                                      children: [
                                        TextSpan(
                                          text: " Join Now",
                                          style: TextStyl.label(context).md.medium,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
