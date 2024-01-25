import '../controller/services_controller.dart';
import '../models/loanone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LoanoneItemWidget extends StatelessWidget {
  LoanoneItemWidget(
    this.loanoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoanoneItemModel loanoneItemModelObj;

  var controller = Get.find<ServicesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomIconButton(
                height: 45.adaptSize,
                width: 45.adaptSize,
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(
                  imagePath: loanoneItemModelObj.loanOne!.value,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      loanoneItemModelObj.businessLoans!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Obx(
                    () => Text(
                      loanoneItemModelObj.itisalongestablished!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                bottom: 16.v,
              ),
              child: Obx(
                () => Text(
                  loanoneItemModelObj.viewDetails!.value,
                  style: CustomTextStyles.labelMediumIndigo500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
