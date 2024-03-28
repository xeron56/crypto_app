import '../../../core/app_export.dart';

/// This class is used in the [exchangefour_item_widget] screen.
class ExchangefourItemModel {
  ExchangefourItemModel({
    this.btc,
    this.unityGaming,
    this.decTwo,
    this.id,
  }) {
    btc = btc ?? Rx(ImageConstant.imgBtc1);
    unityGaming = unityGaming ?? Rx("BTC");
    decTwo = decTwo ?? Rx("Limit sell - 10:24");
    id = id ?? Rx("");
  }

  Rx<String>? btc;

  Rx<String>? unityGaming;

  Rx<String>? decTwo;

  Rx<String>? id;
}
