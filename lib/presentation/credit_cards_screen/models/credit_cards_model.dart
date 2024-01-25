import '../../../core/app_export.dart';
import 'balanceslider_item_model.dart';
import 'creditcardslist_item_model.dart';

/// This class defines the variables used in the [credit_cards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreditCardsModel {
  Rx<List<BalancesliderItemModel>> balancesliderItemList = Rx([
    BalancesliderItemModel(
        balance: "Balance".obs,
        fiveThousandSevenHundredFiftyS: "5,756".obs,
        cardholder: "CARD HOLDER".obs,
        eddyCusuma: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        oneThousandTwoHundredTwentyTwo: "12/22".obs,
        thirtySevenMillionSevenHundred: "3778 **** **** 1234".obs),
    BalancesliderItemModel(
        balance: "Balance".obs,
        fiveThousandSevenHundredFiftyS: "5,756".obs,
        cardholder: "CARD HOLDER".obs,
        eddyCusuma: "Eddy Cusuma".obs,
        validthru: "VALID THRU".obs,
        oneThousandTwoHundredTwentyTwo: "12/22".obs,
        thirtySevenMillionSevenHundred: "3778 **** **** 1234".obs)
  ]);

  Rx<List<CreditcardslistItemModel>> creditcardslistItemList = Rx([
    CreditcardslistItemModel(
        cardType: "Card Type".obs,
        secondary: "Secondary".obs,
        bank: "Bank".obs,
        dBLBank: "DBL Bank".obs,
        viewDetails: "View Details".obs),
    CreditcardslistItemModel(
        cardType: "Card Type".obs,
        secondary: "Secondary".obs,
        bank: "Bank".obs,
        dBLBank: "BRC Bank".obs,
        viewDetails: "View Details".obs),
    CreditcardslistItemModel(
        cardType: "Card Type".obs,
        secondary: "Secondary".obs,
        bank: "Bank".obs,
        dBLBank: "ABM Bank".obs,
        viewDetails: "View Details".obs)
  ]);
}
