import '../../../core/app_export.dart';

/// This class is used in the [exchangeone_item_widget] screen.
class ExchangeoneItemModel {
  ExchangeoneItemModel({
    this.decTwo,
    this.bTCCounter,
    this.id,
  }) {
    decTwo = decTwo ?? Rx("Limit sell - 10:24");
    bTCCounter = bTCCounter ?? Rx("41,310.00 BTC");
    id = id ?? Rx("");
  }

  Rx<String>? decTwo;

  Rx<String>? bTCCounter;

  Rx<String>? id;
}
