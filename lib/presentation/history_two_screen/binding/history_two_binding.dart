import 'package:crypto_app/presentation/history_two_screen/controller/history_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryTwoScreen.
///
/// This class ensures that the HistoryTwoController is created when the
/// HistoryTwoScreen is first loaded.
class HistoryTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryTwoController());
  }
}
