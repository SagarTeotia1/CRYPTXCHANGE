import '../../../core/app_export.dart';

/// This class is used in the [loanone_item_widget] screen.
class LoanoneItemModel {
  LoanoneItemModel({
    this.loanOne,
    this.businessLoans,
    this.itisalongestablished,
    this.viewDetails,
    this.id,
  }) {
    loanOne = loanOne ?? Rx(ImageConstant.imgLoan1);
    businessLoans = businessLoans ?? Rx("Business loans");
    itisalongestablished =
        itisalongestablished ?? Rx("It is a long established ");
    viewDetails = viewDetails ?? Rx("View Details");
    id = id ?? Rx("");
  }

  Rx<String>? loanOne;

  Rx<String>? businessLoans;

  Rx<String>? itisalongestablished;

  Rx<String>? viewDetails;

  Rx<String>? id;
}
