import '../../../core/app_export.dart';
import '../models/main_model.dart';

/// A controller class for the MainPage.
///
/// This class manages the state of the MainPage, including the
/// current mainModelObj
class MainController extends GetxController {
  MainController(this.mainModelObj);

  Rx<MainModel> mainModelObj;
}
