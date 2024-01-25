import '../controller/home_controller.dart';
import '../models/home_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget(
    this.homeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomeItemModel homeItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 265.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 17.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          homeItemModelObj.balance!.value,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          homeItemModelObj.price!.value,
                          style: CustomTextStyles.titleMediumOnPrimary_1,
                        ),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgChipCard,
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(
                      left: 141.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Text(
                              homeItemModelObj.cardholder!.value,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Obx(
                            () => Text(
                              homeItemModelObj.eddyCusuma!.value,
                              style: CustomTextStyles.titleSmallOnPrimary,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 41.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Obx(
                              () => Text(
                                homeItemModelObj.validthru!.value,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Obx(
                              () => Text(
                                homeItemModelObj
                                    .oneThousandTwoHundredTwentyTwo!.value,
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.gradientOnPrimaryToOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Obx(
                        () => Text(
                          homeItemModelObj
                              .thirtySevenMillionSevenHundred!.value,
                          style: CustomTextStyles.titleSmallOnPrimary_1,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserOnprimary,
                      height: 18.v,
                      width: 27.h,
                      margin: EdgeInsets.only(left: 60.h),
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
}
