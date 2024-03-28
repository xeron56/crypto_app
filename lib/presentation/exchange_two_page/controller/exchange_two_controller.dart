import '../../../core/app_export.dart';
import '../models/exchange_two_model.dart';

/// A controller class for the ExchangeTwoPage.
///
/// This class manages the state of the ExchangeTwoPage, including the
/// current exchangeTwoModelObj
class ExchangeTwoController extends GetxController {
  ExchangeTwoController(this.exchangeTwoModelObj);

  Rx<ExchangeTwoModel> exchangeTwoModelObj;
}
