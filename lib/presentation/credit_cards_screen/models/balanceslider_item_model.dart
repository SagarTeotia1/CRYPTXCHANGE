import '../../../core/app_export.dart';

/// This class is used in the [balanceslider_item_widget] screen.
class BalancesliderItemModel {
  BalancesliderItemModel({
    this.balance,
    this.fiveThousandSevenHundredFiftyS,
    this.cardholder,
    this.eddyCusuma,
    this.validthru,
    this.oneThousandTwoHundredTwentyTwo,
    this.thirtySevenMillionSevenHundred,
    this.id,
  }) {
    balance = balance ?? Rx("Balance");
    fiveThousandSevenHundredFiftyS =
        fiveThousandSevenHundredFiftyS ?? Rx("5,756");
    cardholder = cardholder ?? Rx("CARD HOLDER");
    eddyCusuma = eddyCusuma ?? Rx("Eddy Cusuma");
    validthru = validthru ?? Rx("VALID THRU");
    oneThousandTwoHundredTwentyTwo =
        oneThousandTwoHundredTwentyTwo ?? Rx("12/22");
    thirtySevenMillionSevenHundred =
        thirtySevenMillionSevenHundred ?? Rx("3778 **** **** 1234");
    id = id ?? Rx("");
  }

  Rx<String>? balance;

  Rx<String>? fiveThousandSevenHundredFiftyS;

  Rx<String>? cardholder;

  Rx<String>? eddyCusuma;

  Rx<String>? validthru;

  Rx<String>? oneThousandTwoHundredTwentyTwo;

  Rx<String>? thirtySevenMillionSevenHundred;

  Rx<String>? id;
}
