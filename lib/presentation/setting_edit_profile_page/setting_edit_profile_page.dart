import 'controller/setting_edit_profile_controller.dart';
import 'models/setting_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/core/utils/validation_functions.dart';
import 'package:sagar_s_application3/widgets/custom_elevated_button.dart';
import 'package:sagar_s_application3/widgets/custom_icon_button.dart';
import 'package:sagar_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SettingEditProfilePage extends StatelessWidget {
  SettingEditProfilePage({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SettingEditProfileController controller =
      Get.put(SettingEditProfileController(SettingEditProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(children: [
                        SizedBox(
                            height: 170.v,
                            width: 174.h,
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgEllipse28,
                                      height: 170.adaptSize,
                                      width: 170.adaptSize,
                                      radius: BorderRadius.circular(85.h),
                                      alignment: Alignment.center,
                                      onTap: () {
                                        onTapImgCircleImage();
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 20.v),
                                      child: CustomIconButton(
                                          height: 38.adaptSize,
                                          width: 38.adaptSize,
                                          padding: EdgeInsets.all(9.h),
                                          decoration:
                                              IconButtonStyleHelper.fillPrimary,
                                          alignment: Alignment.bottomRight,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPencilAlt1)))
                                ])),
                        SizedBox(height: 23.v),
                        _buildInputField7(),
                        SizedBox(height: 18.v),
                        _buildInputField9(),
                        SizedBox(height: 17.v),
                        _buildInputField6(),
                        SizedBox(height: 18.v),
                        _buildInputField10(),
                        SizedBox(height: 17.v),
                        _buildInputField2(
                            cardType: "lbl_date_of_birth".tr,
                            zipcode: "lbl_25_january_1990".tr),
                        SizedBox(height: 17.v),
                        _buildInputField11(),
                        SizedBox(height: 18.v),
                        _buildInputField4(),
                        SizedBox(height: 19.v),
                        _buildInputField8(),
                        SizedBox(height: 17.v),
                        _buildInputField2(
                            cardType: "lbl_postal_code".tr,
                            zipcode: "lbl_45962".tr),
                        SizedBox(height: 19.v),
                        _buildInputField12(),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            height: 40.v,
                            text: "lbl_save".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildInputField7() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_your_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_charlene_reed".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField9() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_user_name".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.userNameController,
          hintText: "lbl_charlene_reed".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField6() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.emailController,
          hintText: "lbl_user_gmail_com".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField10() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.passwordController,
          hintText: "lbl".tr,
          textInputType: TextInputType.visiblePassword,
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildInputField11() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_present_address".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.addressController,
          hintText: "msg_san_jose_california".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField4() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_permanent_address".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.addressController1,
          hintText: "msg_san_jose_california".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField8() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_city".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 7.v),
      CustomTextFormField(
          controller: controller.cityController, hintText: "lbl_san_jose".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputField12() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 7.v),
      CustomTextFormField(
          controller: controller.countryController,
          hintText: "lbl_usa".tr,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Common widget
  Widget _buildInputField2({
    required String cardType,
    required String zipcode,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(cardType,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.blueGray40001)),
      SizedBox(height: 8.v),
      Container(
          width: 287.h,
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 11.v),
          decoration: AppDecoration.outlineTeal
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
          child: Text(zipcode,
              style: CustomTextStyles.bodySmallBluegray900
                  .copyWith(color: appTheme.blueGray900)))
    ]);
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapImgCircleImage() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
