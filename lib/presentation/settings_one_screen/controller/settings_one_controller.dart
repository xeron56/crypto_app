import '../../../core/app_export.dart';
import '../models/settings_one_model.dart';

/// A controller class for the SettingsOneScreen.
///
/// This class manages the state of the SettingsOneScreen, including the
/// current settingsOneModelObj
class SettingsOneController extends GetxController {
  Rx<SettingsOneModel> settingsOneModelObj = SettingsOneModel().obs;
}
