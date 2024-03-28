import '../../../core/app_export.dart';
import 'history_item_model.dart';
import 'history1_item_model.dart';

/// This class defines the variables used in the [history_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel {
  Rx<List<HistoryItemModel>> historyItemList = Rx([
    HistoryItemModel(phone: "Transactions".obs, price: " 14000".obs),
    HistoryItemModel(phone: "Air tickets".obs, price: " 520.00".obs),
    HistoryItemModel(phone: "Taxi".obs, price: " 520.00".obs),
    HistoryItemModel(phone: "Food".obs, price: " 40.00".obs)
  ]);

  Rx<List<History1ItemModel>> history1ItemList = Rx([
    History1ItemModel(
        barbaraDuck: ImageConstant.imgMemoji142.obs,
        title: "Barbara Duck".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "+280.00".obs),
    History1ItemModel(
        title: "Netflix".obs,
        subtitle: "Mastercard • 1541".obs,
        price: "-10.00".obs)
  ]);
}
