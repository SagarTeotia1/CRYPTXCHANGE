import 'controller/registers_controller.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/core/utils/validation_functions.dart';
import 'package:sagar_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:sagar_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:sagar_s_application3/widgets/custom_elevated_button.dart';
import 'package:sagar_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistersScreen extends GetWidget<RegistersController> {
  RegistersScreen({Key? key}) : super(key: key);

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
                                left: 16.h, top: 73.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_create_a_new_account".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 15.v),
                                  Text("msg_it_s_fast_and_easy".tr,
                                      style: CustomTextStyles
                                          .titleSmallBluegray40001),
                                  SizedBox(height: 24.v),
                                  _buildFirstName(),
                                  SizedBox(height: 16.v),
                                  _buildEmail(),
                                  SizedBox(height: 16.v),
                                  _buildPassword(),
                                  SizedBox(height: 40.v),
                                  _buildRegisterButton(),
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

  /// Section Widget
  Widget _buildFirstNameRow() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: CustomTextFormField(
                controller: controller.firstNameRowController,
                hintText: "lbl_first_name".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                fillColor: appTheme.indigo50)));
  }

  /// Section Widget
  Widget _buildLastNameRow() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomTextFormField(
                controller: controller.lastNameRowController,
                hintText: "lbl_last_name".tr,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text".tr;
                  }
                  return null;
                },
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                fillColor: appTheme.indigo50)));
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildFirstNameRow(), _buildLastNameRow()]);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50);
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgAntdesigneyeinvisiblefilled,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 50.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 15.v),
        borderDecoration: TextFormFieldStyleHelper.fillIndigo,
        fillColor: appTheme.indigo50));
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
        text: "lbl_register2".tr,
        onPressed: () {
          onTapRegisterButton();
        });
  }

  /// Navigates to the getStartedScreen when the action is triggered.
  onTapRegisterButton() {
    Get.toNamed(
      AppRoutes.getStartedScreen,
    );
  }
}
