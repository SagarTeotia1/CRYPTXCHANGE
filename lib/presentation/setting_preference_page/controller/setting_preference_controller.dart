import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/setting_preference_page/models/setting_preference_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingPreferencePage.
///
/// This class manages the state of the SettingPreferencePage, including the
/// current settingPreferenceModelObj
class SettingPreferenceController extends GetxController {
  SettingPreferenceController(this.settingPreferenceModelObj);

  TextEditingController classicController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  Rx<SettingPreferenceModel> settingPreferenceModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  @override
  void onClose() {
    super.onClose();
    classicController.dispose();
    timeController.dispose();
  }
}
