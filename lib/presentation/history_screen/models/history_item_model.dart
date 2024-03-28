import '../../../core/app_export.dart';

/// This class is used in the [history_item_widget] screen.
class HistoryItemModel {
  HistoryItemModel({
    this.phone,
    this.price,
    this.id,
  }) {
    phone = phone ?? Rx("Transactions");
    price = price ?? Rx(" 14000");
    id = id ?? Rx("");
  }

  Rx<String>? phone;

  Rx<String>? price;

  Rx<String>? id;
}
