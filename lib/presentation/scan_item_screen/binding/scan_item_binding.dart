import 'package:crypto_app/presentation/scan_item_screen/controller/scan_item_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ScanItemScreen.
///
/// This class ensures that the ScanItemController is created when the
/// ScanItemScreen is first loaded.
class ScanItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScanItemController());
  }
}
