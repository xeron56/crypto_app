import '../../../core/app_export.dart';
import '../models/exchange_three_model.dart';

/// A controller class for the ExchangeThreePage.
///
/// This class manages the state of the ExchangeThreePage, including the
/// current exchangeThreeModelObj
class ExchangeThreeController extends GetxController {
  ExchangeThreeController(this.exchangeThreeModelObj);

  Rx<ExchangeThreeModel> exchangeThreeModelObj;
}
