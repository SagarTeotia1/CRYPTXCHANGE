import '../../../core/app_export.dart';

/// This class is used in the [moneybagofdollars_item_widget] screen.
class MoneybagofdollarsItemModel {
  MoneybagofdollarsItemModel({
    this.moneyBagOfDollars,
    this.totalInvestedAmount,
    this.price,
    this.id,
  }) {
    moneyBagOfDollars =
        moneyBagOfDollars ?? Rx(ImageConstant.imgMoneyBagOfDollars);
    totalInvestedAmount = totalInvestedAmount ?? Rx("Total Invested Amount");
    price = price ?? Rx("150,000");
    id = id ?? Rx("");
  }

  Rx<String>? moneyBagOfDollars;

  Rx<String>? totalInvestedAmount;

  Rx<String>? price;

  Rx<String>? id;
}
