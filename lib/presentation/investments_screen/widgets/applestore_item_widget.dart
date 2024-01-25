import '../controller/investments_controller.dart';
import '../models/applestore_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ApplestoreItemWidget extends StatelessWidget {
  ApplestoreItemWidget(
    this.applestoreItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ApplestoreItemModel applestoreItemModelObj;

  var controller = Get.find<InvestmentsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: applestoreItemModelObj.image!.value,
              height: 45.adaptSize,
              width: 45.adaptSize,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    applestoreItemModelObj.appleStore!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    applestoreItemModelObj.ecommerceMarketplace!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              right: 4.h,
              bottom: 13.v,
            ),
            child: Obx(
              () => Text(
                applestoreItemModelObj.sixteen!.value,
                style: CustomTextStyles.titleSmallGreen600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
