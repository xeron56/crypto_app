import 'package:crypto_app/presentation/main_three_screen/controller/main_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainThreeScreen.
///
/// This class ensures that the MainThreeController is created when the
/// MainThreeScreen is first loaded.
class MainThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainThreeController());
  }
}
