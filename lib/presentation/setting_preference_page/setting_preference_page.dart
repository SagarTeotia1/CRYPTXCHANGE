import 'controller/setting_preference_controller.dart';
import 'models/setting_preference_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/widgets/custom_elevated_button.dart';
import 'package:sagar_s_application3/widgets/custom_switch.dart';
import 'package:sagar_s_application3/widgets/custom_text_form_field.dart';

class SettingPreferencePage extends StatelessWidget {
  SettingPreferencePage({Key? key})
      : super(
          key: key,
        );

  SettingPreferenceController controller =
      Get.put(SettingPreferenceController(SettingPreferenceModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInputField7(),
                    SizedBox(height: 17.v),
                    _buildInputField8(),
                    SizedBox(height: 25.v),
                    Text(
                      "lbl_notification".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 13.v),
                    Padding(
                      padding: EdgeInsets.only(right: 49.h),
                      child: Row(
                        children: [
                          Obx(
                            () => CustomSwitch(
                              value: controller.isSelectedSwitch.value,
                              onChange: (value) {
                                controller.isSelectedSwitch.value = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 5.v,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "msg_i_send_or_receive".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => CustomSwitch(
                            value: controller.isSelectedSwitch1.value,
                            onChange: (value) {
                              controller.isSelectedSwitch1.value = value;
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          child: Text(
                            "msg_i_receive_merchant".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(right: 38.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => CustomSwitch(
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 6.v,
                              ),
                              value: controller.isSelectedSwitch2.value,
                              onChange: (value) {
                                controller.isSelectedSwitch2.value = value;
                              },
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 193.h,
                              margin: EdgeInsets.only(left: 12.h),
                              child: Text(
                                "msg_there_are_recommendation".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall!.copyWith(
                                  height: 1.50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                      height: 40.v,
                      text: "lbl_save".tr,
                      buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField7() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_currency".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: controller.classicController,
          hintText: "lbl_usd".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField8() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_time_zone".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: controller.timeController,
          hintText: "msg_gmt_12_00_international".tr,
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
