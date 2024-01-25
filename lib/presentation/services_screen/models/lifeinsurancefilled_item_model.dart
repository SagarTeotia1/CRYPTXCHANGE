import '../../../core/app_export.dart';

/// This class is used in the [lifeinsurancefilled_item_widget] screen.
class LifeinsurancefilledItemModel {
  LifeinsurancefilledItemModel({
    this.lifeInsuranceFilled,
    this.lifeInsurance,
    this.unlimitedProtection,
    this.id,
  }) {
    lifeInsuranceFilled =
        lifeInsuranceFilled ?? Rx(ImageConstant.imgLifeInsuranceFilled);
    lifeInsurance = lifeInsurance ?? Rx("Life Insurance");
    unlimitedProtection = unlimitedProtection ?? Rx("Unlimited protection");
    id = id ?? Rx("");
  }

  Rx<String>? lifeInsuranceFilled;

  Rx<String>? lifeInsurance;

  Rx<String>? unlimitedProtection;

  Rx<String>? id;
}
