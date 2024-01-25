import '../controller/accounts_controller.dart';
import '../models/accountsgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AccountsgridItemWidget extends StatelessWidget {
  AccountsgridItemWidget(
    this.accountsgridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountsgridItemModel accountsgridItemModelObj;

  var controller = Get.find<AccountsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillGrayTL22,
              child: CustomImageView(
                imagePath: accountsgridItemModelObj.moneyTagOne!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      accountsgridItemModelObj.myBalance!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ),
                SizedBox(height: 4.v),
                Obx(
                  () => Text(
                    accountsgridItemModelObj.price!.value,
                    style: CustomTextStyles.titleMediumPrimary_1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
