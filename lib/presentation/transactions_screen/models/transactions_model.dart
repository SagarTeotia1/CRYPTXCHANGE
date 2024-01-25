import '../../../core/app_export.dart';
import 'balance_item_model.dart';
import 'arrow_item_model.dart';

/// This class defines the variables used in the [transactions_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TransactionsModel {
  Rx<List<BalanceItemModel>> balanceItemList = Rx([
    BalanceItemModel(
        balance: "Balance".obs,
        price: "5,756".obs,
        cardholder: "CARD HOLDER".obs,
        eddyCusuma: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        oneThousandTwoHundredTwentyTwo: "12/22".obs,
        thirtySevenMillionSevenHundred: "3778 **** **** 1234".obs),
    BalanceItemModel(
        balance: "Balance".obs,
        price: "5,756".obs,
        cardholder: "CARD HOLDER".obs,
        eddyCusuma: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        oneThousandTwoHundredTwentyTwo: "12/22".obs,
        thirtySevenMillionSevenHundred: "3778 **** **** 1234".obs)
  ]);

  Rx<List<ArrowItemModel>> arrowItemList = Rx([
    ArrowItemModel(
        arrow: ImageConstant.imgArrowGreen600.obs,
        freepikSales: "Freepik Sales".obs,
        time: "25 Jan, 10.40 PM".obs,
        price: "+750".obs),
    ArrowItemModel(
        arrow: ImageConstant.imgArrow.obs,
        freepikSales: "Mobile Service".obs,
        time: "20 Jan, 10.40 PM".obs,
        price: "-150".obs),
    ArrowItemModel(
        arrow: ImageConstant.imgArrow.obs,
        freepikSales: "Wilson".obs,
        time: "15 Jan, 03.29 PM".obs,
        price: "-1050".obs),
    ArrowItemModel(
        arrow: ImageConstant.imgArrowGreen600.obs,
        freepikSales: "Emilly".obs,
        time: "14 Jan, 10.40 PM".obs,
        price: "+840".obs)
  ]);
}
