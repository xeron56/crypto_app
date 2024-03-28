import '../../../core/app_export.dart';
import '../models/exchange_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExchangeFourScreen.
///
/// This class manages the state of the ExchangeFourScreen, including the
/// current exchangeFourModelObj
class ExchangeFourController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ExchangeFourModel> exchangeFourModelObj = ExchangeFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
