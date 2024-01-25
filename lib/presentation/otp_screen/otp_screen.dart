import 'controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:sagar_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sagar_s_application3/widgets/custom_elevated_button.dart';
import 'package:sagar_s_application3/widgets/custom_pin_code_text_field.dart';

class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16.h, top: 73.v, right: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_enter_otp".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 15.v),
                      Text("msg_code_has_been_send".tr,
                          style: CustomTextStyles.titleSmallBluegray40001),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(right: 1.h),
                          child: Obx(() => CustomPinCodeTextField(
                              context: Get.context!,
                              controller: controller.otpController.value,
                              onChanged: (value) {}))),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                          text: "lbl_continue".tr,
                          onPressed: () {
                            onTapContinue();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 329.h, 17.v)));
  }

  /// Navigates to the newPasswordScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.newPasswordScreen,
    );
  }
}
