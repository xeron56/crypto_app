import '../../../core/app_export.dart';
import 'exchangefour_item_model.dart';

/// This class defines the variables used in the [exchange_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExchangeFourModel {
  Rx<List<ExchangefourItemModel>> exchangefourItemList = Rx([
    ExchangefourItemModel(
        btc: ImageConstant.imgBtc1.obs,
        unityGaming: "BTC".obs,
        decTwo: "Limit sell - 10:24".obs),
    ExchangefourItemModel(
        btc: ImageConstant.imgGroup.obs,
        unityGaming: "XRP".obs,
        decTwo: "Limit sell - 10:24".obs),
    ExchangefourItemModel(
        btc: ImageConstant.imgGroupOrangeA200.obs,
        unityGaming: "ZEC".obs,
        decTwo: "Limit sell - 10:24".obs),
    ExchangefourItemModel(
        btc: ImageConstant.imgGroupIndigoA200.obs,
        unityGaming: "ETH".obs,
        decTwo: "Limit sell - 10:24".obs),
    ExchangefourItemModel(
        btc: ImageConstant.imgGroupGreen800.obs,
        unityGaming: "ETC".obs,
        decTwo: "Limit sell - 10:24".obs),
    ExchangefourItemModel(
        btc: ImageConstant.imgGroupBlack900.obs,
        unityGaming: "MOAC".obs,
        decTwo: "Limit sell - 10:24".obs)
  ]);
}
