import 'package:crypto_app/presentation/exchange_four_screen/controller/exchange_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExchangeFourScreen.
///
/// This class ensures that the ExchangeFourController is created when the
/// ExchangeFourScreen is first loaded.
class ExchangeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExchangeFourController());
  }
}
