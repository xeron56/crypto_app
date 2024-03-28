import '../../../core/app_export.dart';
import 'exchangethree_item_model.dart';

/// This class defines the variables used in the [exchange_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExchangeThreeModel {
  Rx<List<ExchangethreeItemModel>> exchangethreeItemList = Rx([
    ExchangethreeItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit sell - 10:24".obs,
        bTCCounter: "0.0035100 BTC".obs,
        price: "1.525.00".obs),
    ExchangethreeItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit buy - 10:31".obs,
        bTCCounter: "0.016174 BTC".obs,
        price: "3.525.00".obs),
    ExchangethreeItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit sell - 14:50".obs,
        bTCCounter: "0.0155100 BTC".obs,
        price: "3.525.00".obs)
  ]);
}
