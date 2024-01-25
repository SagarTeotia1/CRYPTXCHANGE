import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/credit_cards_screen/models/credit_cards_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CreditCardsScreen.
///
/// This class manages the state of the CreditCardsScreen, including the
/// current creditCardsModelObj
class CreditCardsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController classicController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController expirationDateController = TextEditingController();

  Rx<CreditCardsModel> creditCardsModelObj = CreditCardsModel().obs;

  Rx<int> sliderIndex = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    classicController.dispose();
    nameController.dispose();
    cardNumberController.dispose();
    expirationDateController.dispose();
  }
}
