import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../helpers/helpers.dart';
import '../../../shared/shared.dart';
import '../auth_module.dart';

class RegisterPage extends StatelessWidget {
  final RegisterController controller = RegisterController.instance;

  @override
  Widget build(BuildContext context) {
    var screen = Get.size;

    return AuthLayout(
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => Keyboard.hide(context),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(minHeight: screen.height - 55),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
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
                            Text("Register", style: TextStyl.heading(context).md.semibold),
                            const SizedBox(height: kSpacer1),
                            Text("Sign up to start using vida social", style: TextStyl.body(context).sm.regular),
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
                          FormLabel("Username"),
                          const SizedBox(height: kSpacer2),
                          FormInput.text(
                            controller: controller.usernameInput,
                            placeholder: "john.doe",
                            leading: Icon(FeatherIcons.user),
                            action: TextInputAction.next,
                            validator: (value) => Validator("Username", value!).required().validate(),
                          ),
                          const SizedBox(height: kSpacer),
                          FormLabel("Email"),
                          const SizedBox(height: kSpacer2),
                          FormInput.email(
                            controller: controller.emailInput,
                            placeholder: "john.doe@example.com",
                            leading: Icon(Icons.email_outlined),
                            action: TextInputAction.next,
                            validator: (value) => Validator("Email", value!).email().required().validate(),
                          ),
                          const SizedBox(height: kSpacer),
                          FormLabel("Password"),
                          const SizedBox(height: kSpacer2),
                          FormInput.password(
                            controller: controller.passwordInput,
                            placeholder: "********",
                            leading: Icon(Icons.lock_outline),
                            action: TextInputAction.done,
                            validator: (value) => Validator("Password", value!).required().validate(),
                          ),
                          const SizedBox(height: kSpacer),
                          Button.block(
                            key: ObjectKey("register_button"),
                            label: "Register",
                            onTap: (btn) {
                              btn.setBusy(true).setDisabled(true);
                              controller.submit();
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
                              Text("OR"),
                              const SizedBox(width: kSpacer3),
                              Expanded(child: Decorator(type: DecoratorType.halfRight)),
                            ],
                          ),
                          const SizedBox(height: kSpacer),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyl.label(context).md.regular?.copyWith(color: AppColors.primaryContent(context)),
                              ),
                              GestureDetector(
                                onTap: () => Get.offNamed(AuthRoutes.login),
                                child: Text(
                                  " Sign in",
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
    );
  }
}
