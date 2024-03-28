import 'settingstwo_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [settings_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SettingsTwoModel {
  Rx<List<SettingstwoItemModel>> settingstwoItemList =
      Rx(List.generate(8, (index) => SettingstwoItemModel()));
}
