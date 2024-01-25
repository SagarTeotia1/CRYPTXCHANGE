import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
