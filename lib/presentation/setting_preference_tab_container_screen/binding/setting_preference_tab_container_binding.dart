import '../controller/setting_preference_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingPreferenceTabContainerScreen.
///
/// This class ensures that the SettingPreferenceTabContainerController is created when the
/// SettingPreferenceTabContainerScreen is first loaded.
class SettingPreferenceTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingPreferenceTabContainerController());
  }
}
