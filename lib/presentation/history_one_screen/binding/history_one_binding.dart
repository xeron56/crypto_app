import 'package:crypto_app/presentation/history_one_screen/controller/history_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HistoryOneScreen.
///
/// This class ensures that the HistoryOneController is created when the
/// HistoryOneScreen is first loaded.
class HistoryOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoryOneController());
  }
}
