import '../../../core/app_export.dart';
import 'settingsone_item_model.dart';

/// This class defines the variables used in the [settings_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsOneModel {
  Rx<List<SettingsoneItemModel>> settingsoneItemList = Rx([
    SettingsoneItemModel(
        subtitle: "Card Number".obs, subtitle1: "5469 5400 1427 2122".obs),
    SettingsoneItemModel(
        subtitle: "Cardholder Name".obs, subtitle1: "Alex Adams".obs),
    SettingsoneItemModel(subtitle: "Valid Thru".obs, subtitle1: "10/20".obs),
    SettingsoneItemModel(subtitle: "CVV".obs, subtitle1: "228".obs)
  ]);
}
