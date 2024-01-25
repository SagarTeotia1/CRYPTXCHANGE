import '../../../core/app_export.dart';

/// This class is used in the [applestore_item_widget] screen.
class ApplestoreItemModel {
  ApplestoreItemModel({
    this.image,
    this.appleStore,
    this.ecommerceMarketplace,
    this.sixteen,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgClose);
    appleStore = appleStore ?? Rx("Apple Store");
    ecommerceMarketplace =
        ecommerceMarketplace ?? Rx("E-commerce, Marketplace");
    sixteen = sixteen ?? Rx("+16%");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? appleStore;

  Rx<String>? ecommerceMarketplace;

  Rx<String>? sixteen;

  Rx<String>? id;
}
