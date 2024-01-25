import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/setting_preference_tab_container_screen/models/setting_preference_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingPreferenceTabContainerScreen.
///
/// This class manages the state of the SettingPreferenceTabContainerScreen, including the
/// current settingPreferenceTabContainerModelObj
class SettingPreferenceTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<SettingPreferenceTabContainerModel> settingPreferenceTabContainerModelObj =
      SettingPreferenceTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
