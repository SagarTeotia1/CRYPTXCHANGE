import '../../../core/app_export.dart';
import 'lifeinsurancefilled_item_model.dart';
import 'loanone_item_model.dart';

/// This class defines the variables used in the [services_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesModel {
  Rx<List<LifeinsurancefilledItemModel>> lifeinsurancefilledItemList = Rx([
    LifeinsurancefilledItemModel(
        lifeInsuranceFilled: ImageConstant.imgLifeInsuranceFilled.obs,
        lifeInsurance: "Life Insurance".obs,
        unlimitedProtection: "Unlimited protection".obs),
    LifeinsurancefilledItemModel(
        lifeInsuranceFilled: ImageConstant.imgBag1.obs,
        lifeInsurance: "Shopping".obs,
        unlimitedProtection: "Buy. Think. Grow".obs),
    LifeinsurancefilledItemModel(
        lifeInsuranceFilled: ImageConstant.imgShield1.obs,
        lifeInsurance: "Safety".obs,
        unlimitedProtection: "We are your allies".obs)
  ]);

  Rx<List<LoanoneItemModel>> loanoneItemList = Rx([
    LoanoneItemModel(
        loanOne: ImageConstant.imgLoan1.obs,
        businessLoans: "Business loans".obs,
        itisalongestablished: "It is a long established ".obs,
        viewDetails: "View Details".obs),
    LoanoneItemModel(
        loanOne: ImageConstant.imgBriefcase1.obs,
        businessLoans: "Checking accounts".obs,
        itisalongestablished: "It is a long established ".obs,
        viewDetails: "View Details".obs),
    LoanoneItemModel(
        loanOne: ImageConstant.imgGroup.obs,
        businessLoans: "Savings accounts".obs,
        itisalongestablished: "It is a long established ".obs,
        viewDetails: "View Details".obs),
    LoanoneItemModel(
        loanOne: ImageConstant.imgUser32.obs,
        businessLoans: "Debit and credit cards".obs,
        itisalongestablished: "It is a long established ".obs,
        viewDetails: "View Details".obs),
    LoanoneItemModel(
        loanOne: ImageConstant.imgShield1.obs,
        businessLoans: "Life Insurance".obs,
        itisalongestablished: "It is a long established ".obs,
        viewDetails: "View Details".obs),
    LoanoneItemModel(
        loanOne: ImageConstant.imgLoan1.obs,
        businessLoans: "Business loans".obs,
        itisalongestablished: "It is a long established ".obs,
        viewDetails: "View Details".obs)
  ]);
}
