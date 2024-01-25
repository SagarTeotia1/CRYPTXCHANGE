import '../controller/transactions_controller.dart';
import '../models/arrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ArrowItemWidget extends StatelessWidget {
  ArrowItemWidget(
    this.arrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArrowItemModel arrowItemModelObj;

  var controller = Get.find<TransactionsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 35.adaptSize,
                width: 35.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.outlineGreen,
                child: CustomImageView(
                  imagePath: arrowItemModelObj.arrow!.value,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    arrowItemModelObj.freepikSales!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    arrowItemModelObj.time!.value,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 10.v,
            ),
            child: Obx(
              () => Text(
                arrowItemModelObj.price!.value,
                style: CustomTextStyles.titleSmallGreen600_1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
