import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/home_screen/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeScreen.
///
/// This class manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}
