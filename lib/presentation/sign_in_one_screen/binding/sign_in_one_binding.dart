import 'package:crypto_app/presentation/sign_in_one_screen/controller/sign_in_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInOneScreen.
///
/// This class ensures that the SignInOneController is created when the
/// SignInOneScreen is first loaded.
class SignInOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInOneController());
  }
}
