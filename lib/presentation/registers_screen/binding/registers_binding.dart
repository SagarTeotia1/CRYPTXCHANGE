import '../controller/registers_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistersScreen.
///
/// This class ensures that the RegistersController is created when the
/// RegistersScreen is first loaded.
class RegistersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistersController());
  }
}
