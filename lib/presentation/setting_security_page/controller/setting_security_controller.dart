import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/setting_security_page/models/setting_security_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingSecurityPage.
///
/// This class manages the state of the SettingSecurityPage, including the
/// current settingSecurityModelObj
class SettingSecurityController extends GetxController {
  SettingSecurityController(this.settingSecurityModelObj);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  Rx<SettingSecurityModel> settingSecurityModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    newpasswordController.dispose();
  }
}
