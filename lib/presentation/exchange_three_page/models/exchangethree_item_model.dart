import '../../../core/app_export.dart';

/// This class is used in the [exchangethree_item_widget] screen.
class ExchangethreeItemModel {
  ExchangethreeItemModel({
    this.unityGaming,
    this.decTwo,
    this.bTCCounter,
    this.price,
    this.id,
  }) {
    unityGaming = unityGaming ?? Rx("BTC - USD");
    decTwo = decTwo ?? Rx("Limit sell - 10:24");
    bTCCounter = bTCCounter ?? Rx("0.0035100 BTC");
    price = price ?? Rx("1.525.00");
    id = id ?? Rx("");
  }

  Rx<String>? unityGaming;

  Rx<String>? decTwo;

  Rx<String>? bTCCounter;

  Rx<String>? price;

  Rx<String>? id;
}
