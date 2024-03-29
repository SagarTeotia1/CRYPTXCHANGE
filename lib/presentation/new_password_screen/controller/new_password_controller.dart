import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/new_password_screen/models/new_password_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewPasswordScreen.
///
/// This class manages the state of the NewPasswordScreen, including the
/// current newPasswordModelObj
class NewPasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<NewPasswordModel> newPasswordModelObj = NewPasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
