import '../../../core/app_export.dart';

/// This class is used in the [subscription_item_widget] screen.
class SubscriptionItemModel {
  SubscriptionItemModel({
    this.basic,
    this.price,
    this.id,
  }) {
    basic = basic ?? Rx("Basic");
    price = price ?? Rx("7 days free,19/mo");
    id = id ?? Rx("");
  }

  Rx<String>? basic;

  Rx<String>? price;

  Rx<String>? id;
}
