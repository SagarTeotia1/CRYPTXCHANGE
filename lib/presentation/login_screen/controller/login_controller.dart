import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
