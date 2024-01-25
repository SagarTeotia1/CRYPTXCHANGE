import '../../../core/app_export.dart';

/// This class is used in the [arrow_item_widget] screen.
class ArrowItemModel {
  ArrowItemModel({
    this.arrow,
    this.freepikSales,
    this.time,
    this.price,
    this.id,
  }) {
    arrow = arrow ?? Rx(ImageConstant.imgArrowGreen600);
    freepikSales = freepikSales ?? Rx("Freepik Sales");
    time = time ?? Rx("25 Jan, 10.40 PM");
    price = price ?? Rx("+750");
    id = id ?? Rx("");
  }

  Rx<String>? arrow;

  Rx<String>? freepikSales;

  Rx<String>? time;

  Rx<String>? price;

  Rx<String>? id;
}
