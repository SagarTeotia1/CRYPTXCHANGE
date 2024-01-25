import '../controller/transactions_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TransactionsScreen.
///
/// This class ensures that the TransactionsController is created when the
/// TransactionsScreen is first loaded.
class TransactionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TransactionsController());
  }
}
