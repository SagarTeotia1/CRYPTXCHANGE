import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/data/models/me/get_me_resp.dart';
import 'package:sagar_s_application3/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// A controller class for the SettingEditProfilePage.
///
/// This class manages the state of the SettingEditProfilePage, including the
/// current settingEditProfileModelObj
class SettingEditProfileController extends GetxController {
  SettingEditProfileController(this.settingEditProfileModelObj);

  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  Rx<SettingEditProfileModel> settingEditProfileModelObj;

  GetMeResp getMeResp = GetMeResp();

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    addressController.dispose();
    addressController1.dispose();
    cityController.dispose();
    countryController.dispose();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callFetchMe() async {
    try {
      getMeResp = await Get.find<ApiClient>().fetchMe(headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY4OTgyMn0.fh9TL3QIkwUvqXNQ9ztlvb5qXnN-st_70G9CsvVB0M8',
      });
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleFetchMeSuccess() {}

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/me] API
  ///
  /// It has [GetMeReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onFetchMeSuccess()` function.
  /// If the call fails, the function calls the `_onFetchMeError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onFetchMeSuccess() {}

  /// Displays a toast message using the Fluttertoast library.
  void _onFetchMeError() {
    Fluttertoast.showToast(msg: getMeResp.message.toString() ?? '');
  }
}
