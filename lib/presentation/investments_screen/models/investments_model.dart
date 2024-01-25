import '../../../core/app_export.dart';
import 'moneybagofdollars_item_model.dart';
import 'applestore_item_model.dart';

/// This class defines the variables used in the [investments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvestmentsModel {
  Rx<List<MoneybagofdollarsItemModel>> moneybagofdollarsItemList = Rx([
    MoneybagofdollarsItemModel(
        moneyBagOfDollars: ImageConstant.imgMoneyBagOfDollars.obs,
        totalInvestedAmount: "Total Invested Amount".obs,
        price: "150,000".obs),
    MoneybagofdollarsItemModel(
        moneyBagOfDollars: ImageConstant.imgPieChart1.obs,
        totalInvestedAmount: "Number of Investments".obs,
        price: "1,250".obs),
    MoneybagofdollarsItemModel(
        moneyBagOfDollars: ImageConstant.imgRepeat1.obs,
        totalInvestedAmount: "Rate of Return".obs,
        price: "+5.80%".obs)
  ]);

  Rx<List<ApplestoreItemModel>> applestoreItemList = Rx([
    ApplestoreItemModel(
        image: ImageConstant.imgClose.obs,
        appleStore: "Apple Store".obs,
        ecommerceMarketplace: "E-commerce, Marketplace".obs,
        sixteen: "+16%".obs),
    ApplestoreItemModel(
        image: ImageConstant.imgFloatingIcon.obs,
        appleStore: "Tesla Motors".obs,
        ecommerceMarketplace: "Electric Vehicles".obs,
        sixteen: "+25%".obs),
    ApplestoreItemModel(
        appleStore: "Samsung Mobile".obs,
        ecommerceMarketplace: "E-commerce, Marketplace".obs,
        sixteen: "-4%".obs)
  ]);
}
