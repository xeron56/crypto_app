import '../../../core/app_export.dart';
import '../models/main_five_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MainFiveScreen.
///
/// This class manages the state of the MainFiveScreen, including the
/// current mainFiveModelObj
class MainFiveController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController subtitleController = TextEditingController();

  Rx<MainFiveModel> mainFiveModelObj = MainFiveModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    subtitleController.dispose();
  }
}
