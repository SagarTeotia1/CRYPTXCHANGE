import '../controller/services_controller.dart';
import '../models/lifeinsurancefilled_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sagar_s_application3/core/app_export.dart';
import 'package:sagar_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LifeinsurancefilledItemWidget extends StatelessWidget {
  LifeinsurancefilledItemWidget(
    this.lifeinsurancefilledItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LifeinsurancefilledItemModel lifeinsurancefilledItemModelObj;

  var controller = Get.find<ServicesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder17,
          ),
          child: Row(
            children: [
              Obx(
                () => CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillGrayTL22,
                  child: CustomImageView(
                    imagePath: lifeinsurancefilledItemModelObj
                        .lifeInsuranceFilled!.value,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        lifeinsurancefilledItemModelObj.lifeInsurance!.value,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Obx(
                      () => Text(
                        lifeinsurancefilledItemModelObj
                            .unlimitedProtection!.value,
                        style: theme.textTheme.bodySmall,
                      ),
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
