import 'package:crypto_app/presentation/exchange_five_screen/controller/exchange_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExchangeFiveScreen.
///
/// This class ensures that the ExchangeFiveController is created when the
/// ExchangeFiveScreen is first loaded.
class ExchangeFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExchangeFiveController());
  }
}
