import '../../../core/app_export.dart';
import 'accountsgrid_item_model.dart';

/// This class defines the variables used in the [accounts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountsModel {
  Rx<List<AccountsgridItemModel>> accountsgridItemList = Rx([
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.imgMoneyTag1.obs,
        myBalance: "My Balance".obs,
        price: "12,750".obs),
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.imgGroup747.obs,
        myBalance: "Income".obs,
        price: "5,600".obs),
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.img001Medical.obs,
        myBalance: "Expense".obs,
        price: "3,460".obs),
    AccountsgridItemModel(
        moneyTagOne: ImageConstant.img003Saving.obs,
        myBalance: "Total Saving".obs,
        price: "7,920".obs)
  ]);
}
