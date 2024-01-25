import '../../../core/app_export.dart';

/// This class is used in the [loans_item_widget] screen.
class LoansItemModel {
  LoansItemModel({
    this.userThirtyTwo,
    this.personalLoans,
    this.price,
    this.id,
  }) {
    userThirtyTwo = userThirtyTwo ?? Rx(ImageConstant.imgUser32);
    personalLoans = personalLoans ?? Rx("Personal Loans");
    price = price ?? Rx("50,000");
    id = id ?? Rx("");
  }

  Rx<String>? userThirtyTwo;

  Rx<String>? personalLoans;

  Rx<String>? price;

  Rx<String>? id;
}
