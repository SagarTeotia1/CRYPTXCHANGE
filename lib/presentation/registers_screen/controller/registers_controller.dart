import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/registers_screen/models/registers_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistersScreen.
///
/// This class manages the state of the RegistersScreen, including the
/// current registersModelObj
class RegistersController extends GetxController {
  TextEditingController firstNameRowController = TextEditingController();

  TextEditingController lastNameRowController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<RegistersModel> registersModelObj = RegistersModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    firstNameRowController.dispose();
    lastNameRowController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
