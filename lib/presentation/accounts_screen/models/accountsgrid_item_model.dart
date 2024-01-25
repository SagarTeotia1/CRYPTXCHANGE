import '../../../core/app_export.dart';

/// This class is used in the [accountsgrid_item_widget] screen.
class AccountsgridItemModel {
  AccountsgridItemModel({
    this.moneyTagOne,
    this.myBalance,
    this.price,
    this.id,
  }) {
    moneyTagOne = moneyTagOne ?? Rx(ImageConstant.imgMoneyTag1);
    myBalance = myBalance ?? Rx("My Balance");
    price = price ?? Rx("12,750");
    id = id ?? Rx("");
  }

  Rx<String>? moneyTagOne;

  Rx<String>? myBalance;

  Rx<String>? price;

  Rx<String>? id;
}
