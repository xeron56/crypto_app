import '../../../core/app_export.dart';
import '../models/main_one_model.dart';

/// A controller class for the MainOneScreen.
///
/// This class manages the state of the MainOneScreen, including the
/// current mainOneModelObj
class MainOneController extends GetxController {
  Rx<MainOneModel> mainOneModelObj = MainOneModel().obs;
}
