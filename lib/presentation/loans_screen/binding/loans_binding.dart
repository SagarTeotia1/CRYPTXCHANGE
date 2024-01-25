import '../controller/loans_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoansScreen.
///
/// This class ensures that the LoansController is created when the
/// LoansScreen is first loaded.
class LoansBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoansController());
  }
}
