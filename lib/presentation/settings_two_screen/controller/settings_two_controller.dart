import '../../../core/app_export.dart';
import '../models/settings_two_model.dart';

/// A controller class for the SettingsTwoScreen.
///
/// This class manages the state of the SettingsTwoScreen, including the
/// current settingsTwoModelObj
class SettingsTwoController extends GetxController {
  Rx<SettingsTwoModel> settingsTwoModelObj = SettingsTwoModel().obs;
}
