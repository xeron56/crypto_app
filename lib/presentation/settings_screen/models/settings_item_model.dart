import '../../../core/app_export.dart';

/// This class is used in the [settings_item_widget] screen.
class SettingsItemModel {
  SettingsItemModel({
    this.tinkoffBank,
    this.nordBank,
    this.price,
    this.cardNumber,
    this.id,
  }) {
    tinkoffBank = tinkoffBank ?? Rx(ImageConstant.imgOval1);
    nordBank = nordBank ?? Rx("Tinkoff Bank");
    price = price ?? Rx("146 450.00");
    cardNumber = cardNumber ?? Rx("•••• 1546");
    id = id ?? Rx("");
  }

  Rx<String>? tinkoffBank;

  Rx<String>? nordBank;

  Rx<String>? price;

  Rx<String>? cardNumber;

  Rx<String>? id;
}
