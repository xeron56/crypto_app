import '../../../core/app_export.dart';
import '../models/exchange_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ExchangeTabContainerScreen.
///
/// This class manages the state of the ExchangeTabContainerScreen, including the
/// current exchangeTabContainerModelObj
class ExchangeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ExchangeTabContainerModel> exchangeTabContainerModelObj =
      ExchangeTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
