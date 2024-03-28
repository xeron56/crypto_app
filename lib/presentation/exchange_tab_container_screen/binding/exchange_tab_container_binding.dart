import 'package:crypto_app/presentation/exchange_tab_container_screen/controller/exchange_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExchangeTabContainerScreen.
///
/// This class ensures that the ExchangeTabContainerController is created when the
/// ExchangeTabContainerScreen is first loaded.
class ExchangeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExchangeTabContainerController());
  }
}
