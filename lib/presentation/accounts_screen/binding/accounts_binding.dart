import '../controller/accounts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountsScreen.
///
/// This class ensures that the AccountsController is created when the
/// AccountsScreen is first loaded.
class AccountsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountsController());
  }
}
