import '../../../core/app_export.dart';
import '../models/main_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MainFourScreen.
///
/// This class manages the state of the MainFourScreen, including the
/// current mainFourModelObj
class MainFourController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<MainFourModel> mainFourModelObj = MainFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
