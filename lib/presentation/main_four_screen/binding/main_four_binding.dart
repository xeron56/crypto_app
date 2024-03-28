import 'package:crypto_app/presentation/main_four_screen/controller/main_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainFourScreen.
///
/// This class ensures that the MainFourController is created when the
/// MainFourScreen is first loaded.
class MainFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainFourController());
  }
}
