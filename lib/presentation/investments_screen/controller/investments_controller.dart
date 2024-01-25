import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/investments_screen/models/investments_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InvestmentsScreen.
///
/// This class manages the state of the InvestmentsScreen, including the
/// current investmentsModelObj
class InvestmentsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<InvestmentsModel> investmentsModelObj = InvestmentsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
