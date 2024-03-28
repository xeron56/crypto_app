import '../../../core/app_export.dart';
import 'exchangeone_item_model.dart';

/// This class defines the variables used in the [exchange_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExchangeOneModel {
  Rx<List<ExchangeoneItemModel>> exchangeoneItemList = Rx([
    ExchangeoneItemModel(
        decTwo: "Limit sell - 10:24".obs, bTCCounter: "41,310.00 BTC".obs),
    ExchangeoneItemModel(
        decTwo: "Volume (24 hours)".obs, bTCCounter: " 59,914.55".obs),
    ExchangeoneItemModel(
        decTwo: "Aviable Supply".obs, bTCCounter: "15.332.981".obs),
    ExchangeoneItemModel(
        decTwo: "Total Supply".obs, bTCCounter: "17.404.220".obs)
  ]);
}
