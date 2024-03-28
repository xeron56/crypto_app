import '../../../core/app_export.dart';
import '../models/main_two_model.dart';

/// A controller class for the MainTwoScreen.
///
/// This class manages the state of the MainTwoScreen, including the
/// current mainTwoModelObj
class MainTwoController extends GetxController {
  Rx<MainTwoModel> mainTwoModelObj = MainTwoModel().obs;
}
