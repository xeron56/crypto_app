import 'frame_item_model.dart';
import '../../../core/app_export.dart';
import 'bitcoin_item_model.dart';
import 'barbaraduck_item_model.dart';

/// This class defines the variables used in the [main_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainTwoModel {
  Rx<List<FrameItemModel>> frameItemList =
      Rx(List.generate(1, (index) => FrameItemModel()));

  Rx<List<BitcoinItemModel>> bitcoinItemList = Rx([
    BitcoinItemModel(
        bitcoin: ImageConstant.imgEllipse95.obs,
        title: "Bitcoin".obs,
        title1: "145.51".obs,
        unityGaming: "BTC".obs),
    BitcoinItemModel(
        bitcoin: ImageConstant.imgEllipse9528x28.obs,
        title: "Zcash".obs,
        title1: "114".obs,
        unityGaming: "BTC".obs),
    BitcoinItemModel(
        bitcoin: ImageConstant.imgEllipse951.obs,
        title: "Etherium".obs,
        title1: "15.25".obs,
        unityGaming: "BTC".obs)
  ]);

  Rx<List<BarbaraduckItemModel>> barbaraduckItemList = Rx([
    BarbaraduckItemModel(
        barbaraDuck: ImageConstant.imgMemoji142.obs,
        title: "Barbara Duck".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "+280.00".obs),
    BarbaraduckItemModel(
        barbaraDuck: ImageConstant.imgMemoji121.obs,
        title: "Glad Valakas".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "-280.00".obs),
    BarbaraduckItemModel(
        barbaraDuck: ImageConstant.imgMemoji142.obs,
        title: "KFC".obs,
        subtitle: "Mastercard • 1541".obs,
        price: "-30.00".obs)
  ]);
}
