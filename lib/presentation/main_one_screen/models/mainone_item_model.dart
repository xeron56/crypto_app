import '../../../core/app_export.dart';

/// This class is used in the [mainone_item_widget] screen.
class MainoneItemModel {
  MainoneItemModel({
    this.alanDenver,
    this.title,
    this.subtitle,
    this.price,
    this.id,
  }) {
    alanDenver = alanDenver ?? Rx(ImageConstant.imgMemoji142);
    title = title ?? Rx("Alan Denver");
    subtitle = subtitle ?? Rx("Mastercard • 1546");
    price = price ?? Rx("+280.00");
    id = id ?? Rx("");
  }

  Rx<String>? alanDenver;

  Rx<String>? title;

  Rx<String>? subtitle;

  Rx<String>? price;

  Rx<String>? id;
}
