import 'package:crypto_app/presentation/main_five_screen/controller/main_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainFiveScreen.
///
/// This class ensures that the MainFiveController is created when the
/// MainFiveScreen is first loaded.
class MainFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainFiveController());
  }
}
