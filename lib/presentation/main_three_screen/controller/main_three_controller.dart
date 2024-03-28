import '../../../core/app_export.dart';
import '../models/main_three_model.dart';

/// A controller class for the MainThreeScreen.
///
/// This class manages the state of the MainThreeScreen, including the
/// current mainThreeModelObj
class MainThreeController extends GetxController {
  Rx<MainThreeModel> mainThreeModelObj = MainThreeModel().obs;
}
