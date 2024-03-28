import 'package:crypto_app/presentation/main_one_screen/controller/main_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainOneScreen.
///
/// This class ensures that the MainOneController is created when the
/// MainOneScreen is first loaded.
class MainOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainOneController());
  }
}
