import '../../../core/app_export.dart';
import '../models/scan_item_model.dart';

/// A controller class for the ScanItemScreen.
///
/// This class manages the state of the ScanItemScreen, including the
/// current scanItemModelObj
class ScanItemController extends GetxController {
  Rx<ScanItemModel> scanItemModelObj = ScanItemModel().obs;
}
