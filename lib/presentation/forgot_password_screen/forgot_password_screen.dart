import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/core/utils/validation_functions.dart';
import 'package:sagar_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:sagar_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sagar_s_application3/widgets/custom_elevated_button.dart';
import 'package:sagar_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 76.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_forgot_password".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 11.v),
                                  Container(
                                      width: 311.h,
                                      margin: EdgeInsets.only(right: 31.h),
                                      child: Text("msg_please_enter_your".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleSmallBluegray40001
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 21.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.newpasswordController,
                                      hintText: "lbl_email_id".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType: TextInputType.emailAddress,
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 16.h, vertical: 15.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.fillIndigo,
                                      fillColor: appTheme.indigo50),
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(
                                      text: "lbl_continue".tr,
                                      onPressed: () {
                                        onTapContinue();
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
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

  /// Navigates to the otpScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.otpScreen,
    );
  }
}
