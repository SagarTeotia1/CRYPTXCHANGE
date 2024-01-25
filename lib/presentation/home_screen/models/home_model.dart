import '../../../core/app_export.dart';
import 'home_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<HomeItemModel>> homeItemList = Rx([
    HomeItemModel(
        balance: "Balance".obs,
        price: "5,756".obs,
        cardholder: "CARD HOLDER".obs,
        eddyCusuma: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        oneThousandTwoHundredTwentyTwo: "12/22".obs,
        thirtySevenMillionSevenHundred: "3778 **** **** 1234".obs),
    HomeItemModel(
        balance: "Balance".obs,
        price: "5,756".obs,
        cardholder: "CARD HOLDER".obs,
        eddyCusuma: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        oneThousandTwoHundredTwentyTwo: "12/22".obs,
        thirtySevenMillionSevenHundred: "3778 **** **** 1234".obs)
  ]);
}
