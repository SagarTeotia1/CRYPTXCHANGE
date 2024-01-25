import '../../../core/app_export.dart';

/// This class is used in the [creditcardslist_item_widget] screen.
class CreditcardslistItemModel {
  CreditcardslistItemModel({
    this.cardType,
    this.secondary,
    this.bank,
    this.dBLBank,
    this.viewDetails,
    this.id,
  }) {
    cardType = cardType ?? Rx("Card Type");
    secondary = secondary ?? Rx("Secondary");
    bank = bank ?? Rx("Bank");
    dBLBank = dBLBank ?? Rx("DBL Bank");
    viewDetails = viewDetails ?? Rx("View Details");
    id = id ?? Rx("");
  }

  Rx<String>? cardType;

  Rx<String>? secondary;

  Rx<String>? bank;

  Rx<String>? dBLBank;

  Rx<String>? viewDetails;

  Rx<String>? id;
}
