import '../../../core/app_export.dart';
import 'loans_item_model.dart';

/// This class defines the variables used in the [loans_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoansModel {
  Rx<List<LoansItemModel>> loansItemList = Rx([
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgUser32.obs,
        personalLoans: "Personal Loans".obs,
        price: "50,000".obs),
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgBriefcase1.obs,
        personalLoans: "Corporate Loans".obs,
        price: "100,000".obs),
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgGraph1.obs,
        personalLoans: "Business Loans".obs,
        price: "500,000".obs),
    LoansItemModel(
        userThirtyTwo: ImageConstant.imgSupport1.obs,
        personalLoans: "Custom Loans".obs,
        price: "Choose Money".obs)
  ]);
}
