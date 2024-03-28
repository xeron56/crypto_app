import '../../../core/app_export.dart';

/// This class is used in the [barbaraduck_item_widget] screen.
class BarbaraduckItemModel {
  BarbaraduckItemModel({
    this.barbaraDuck,
    this.title,
    this.subtitle,
    this.price,
    this.id,
  }) {
    barbaraDuck = barbaraDuck ?? Rx(ImageConstant.imgMemoji142);
    title = title ?? Rx("Barbara Duck");
    subtitle = subtitle ?? Rx("Mastercard • 1546");
    price = price ?? Rx("+280.00");
    id = id ?? Rx("");
  }

  Rx<String>? barbaraDuck;

  Rx<String>? title;

  Rx<String>? subtitle;

  Rx<String>? price;

  Rx<String>? id;
}
