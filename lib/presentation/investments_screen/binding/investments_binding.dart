import '../controller/investments_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InvestmentsScreen.
///
/// This class ensures that the InvestmentsController is created when the
/// InvestmentsScreen is first loaded.
class InvestmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvestmentsController());
  }
}
