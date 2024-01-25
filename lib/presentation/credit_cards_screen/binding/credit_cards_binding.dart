import '../controller/credit_cards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreditCardsScreen.
///
/// This class ensures that the CreditCardsController is created when the
/// CreditCardsScreen is first loaded.
class CreditCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreditCardsController());
  }
}
