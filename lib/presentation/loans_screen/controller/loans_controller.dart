import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/loans_screen/models/loans_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LoansScreen.
///
/// This class manages the state of the LoansScreen, including the
/// current loansModelObj
class LoansController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<LoansModel> loansModelObj = LoansModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
