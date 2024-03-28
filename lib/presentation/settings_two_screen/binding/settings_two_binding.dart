import 'package:crypto_app/presentation/settings_two_screen/controller/settings_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SettingsTwoScreen.
///
/// This class ensures that the SettingsTwoController is created when the
/// SettingsTwoScreen is first loaded.
class SettingsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsTwoController());
  }
}
