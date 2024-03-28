import '../../../core/app_export.dart';
import 'exchangetwo_item_model.dart';

/// This class defines the variables used in the [exchange_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExchangeTwoModel {
  Rx<List<ExchangetwoItemModel>> exchangetwoItemList = Rx([
    ExchangetwoItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit sell - 10:24".obs,
        bTCCounter: "0.0035100 BTC".obs,
        price: "1.525.00".obs),
    ExchangetwoItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit buy - 10:31".obs,
        bTCCounter: "0.016174 BTC".obs,
        price: "3.525.00".obs),
    ExchangetwoItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit sell - 14:50".obs,
        bTCCounter: "0.0155100 BTC".obs,
        price: "3.525.00".obs),
    ExchangetwoItemModel(
        unityGaming: "ZEC - BTC".obs,
        decTwo: "Limit sell - 10:24".obs,
        bTCCounter: "142.240 ZEC".obs,
        price: "BTC 0.03142.525.00".obs),
    ExchangetwoItemModel(
        unityGaming: "ETH - USD".obs,
        decTwo: "Limit buy - 10:31".obs,
        bTCCounter: "1.016174 ETH".obs,
        price: "1.525.00".obs),
    ExchangetwoItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit sell - 14:50".obs,
        bTCCounter: "0.0155100 BTC".obs,
        price: "3.525.00".obs)
  ]);
}
