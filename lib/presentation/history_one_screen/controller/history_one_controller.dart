import '../../../core/app_export.dart';
import '../models/history_one_model.dart';

/// A controller class for the HistoryOneScreen.
///
/// This class manages the state of the HistoryOneScreen, including the
/// current historyOneModelObj
class HistoryOneController extends GetxController {
  Rx<HistoryOneModel> historyOneModelObj = HistoryOneModel().obs;
}
