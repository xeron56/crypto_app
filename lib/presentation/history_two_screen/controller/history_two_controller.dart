import '../../../core/app_export.dart';
import '../models/history_two_model.dart';

/// A controller class for the HistoryTwoScreen.
///
/// This class manages the state of the HistoryTwoScreen, including the
/// current historyTwoModelObj
class HistoryTwoController extends GetxController {
  Rx<HistoryTwoModel> historyTwoModelObj = HistoryTwoModel().obs;
}
