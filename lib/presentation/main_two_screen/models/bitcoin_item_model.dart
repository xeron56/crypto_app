import '../../../core/app_export.dart';

/// This class is used in the [bitcoin_item_widget] screen.
class BitcoinItemModel {
  BitcoinItemModel({
    this.bitcoin,
    this.title,
    this.title1,
    this.unityGaming,
    this.id,
  }) {
    bitcoin = bitcoin ?? Rx(ImageConstant.imgEllipse95);
    title = title ?? Rx("Bitcoin");
    title1 = title1 ?? Rx("145.51");
    unityGaming = unityGaming ?? Rx("BTC");
    id = id ?? Rx("");
  }

  Rx<String>? bitcoin;

  Rx<String>? title;

  Rx<String>? title1;

  Rx<String>? unityGaming;

  Rx<String>? id;
}
