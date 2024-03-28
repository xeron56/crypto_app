import '../../../core/app_export.dart';
import 'exchangefive_item_model.dart';

/// This class defines the variables used in the [exchange_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExchangeFiveModel {
  Rx<List<ExchangefiveItemModel>> exchangefiveItemList = Rx([
    ExchangefiveItemModel(
        unityGaming: "BTC - USD".obs,
        decTwo: "Limit sell - 10:24".obs,
        bTCCounter: "0.0035100 BTC".obs,
        price: "1.525.00".obs)
  ]);
}
