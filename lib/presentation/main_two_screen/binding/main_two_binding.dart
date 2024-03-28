import 'package:crypto_app/presentation/main_two_screen/controller/main_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainTwoScreen.
///
/// This class ensures that the MainTwoController is created when the
/// MainTwoScreen is first loaded.
class MainTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainTwoController());
  }
}
