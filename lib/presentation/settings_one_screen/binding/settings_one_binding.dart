import 'package:crypto_app/presentation/settings_one_screen/controller/settings_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingsOneScreen.
///
/// This class ensures that the SettingsOneController is created when the
/// SettingsOneScreen is first loaded.
class SettingsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsOneController());
  }
}
