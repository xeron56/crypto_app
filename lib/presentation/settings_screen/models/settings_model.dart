import '../../../core/app_export.dart';
import 'settings_item_model.dart';

/// This class defines the variables used in the [settings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsModel {
  Rx<List<SettingsItemModel>> settingsItemList = Rx([
    SettingsItemModel(
        tinkoffBank: ImageConstant.imgOval1.obs,
        nordBank: "Tinkoff Bank".obs,
        price: "146 450.00".obs,
        cardNumber: "•••• 1546".obs)
  ]);
}
