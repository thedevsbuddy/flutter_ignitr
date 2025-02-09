import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/helpers.dart';
import '../../../shared/shared.dart';
import '../controllers/verify_code_controller.dart';
import '../routes/auth_router.dart';

class VerifyCodePage extends StatelessWidget {
  VerifyCodePage({super.key});

  final VerifyCodeController controller = VerifyCodeController.instance;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => !controller.internetService.isConnected
          ? NotConnectedErrorPage(
              message: "You need internet connection to access this page.",
              action: () => controller.internetService.checkConnection(),
            )
          : AuthLayout(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () => Keyboard.hide(context),
                    child: Container(
                      width: double.infinity,
                      constraints: BoxConstraints(minHeight: screen.height - 55),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 60),
                              Padding(
                                padding: const EdgeInsets.only(left: kSpacer5),
                                child: Image.asset(
                                  "assets/images/logo.png",
                                  width: 112,
                                ),
                              ),
                              const SizedBox(height: kSpacer),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: kSpacer5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Verify Code", style: TextStyl.heading(context).md.semibold),
                                    const SizedBox(height: kSpacer1),
                                    Text("Enter the code sent to:", style: TextStyl.body(context).sm.regular),
                                    Text("${Get.parameters['email']}", style: TextStyl.body(context).md.medium),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: kSpacer5),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: kSpacer6, horizontal: kSpacer5),
                            child: Form(
                              key: controller.formKey,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FormLabel("Verification Code"),
                                  const SizedBox(height: kSpacer2),
                                  FormInput.number(
                                    controller: controller.verificationCodeInput,
                                    placeholder: "Enter verification code",
                                    action: TextInputAction.done,
                                    validator: (value) => Validator("Verification Code", value!).max(6).min(6).required().validate(),
                                  ),
                                  const SizedBox(height: kSpacer),
                                  Button.block(
                                    key: ObjectKey("verify_code_button"),
                                    label: "Verify Code",
                                    onTap: (ButtonController btn) async {
                                      btn.setBusy(true).setDisabled(true);
                                      await controller.submit();
                                      btn.setBusy(false).setDisabled(false);
                                    },
                                  ),
                                  const SizedBox(height: kSpacer),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(child: Decorator(type: DecoratorType.halfLeft)),
                                      const SizedBox(width: kSpacer3),
                                      const Text("OR"),
                                      const SizedBox(width: kSpacer3),
                                      Expanded(child: Decorator(type: DecoratorType.halfRight)),
                                    ],
                                  ),
                                  const SizedBox(height: kSpacer),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Nevermind, Take me back to ",
                                        style: TextStyl.label(context).md.regular?.copyWith(color: AppColors.primaryContent(context)),
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.offNamed(AuthRoutes.login),
                                        child: Text(
                                          " Login",
                                          style: TextStyl.label(context).md.medium?.copyWith(color: AppColors.accent(context)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
