import '../../../core/app_export.dart';
import '../models/exchange_model.dart';

/// A controller class for the ExchangePage.
///
/// This class manages the state of the ExchangePage, including the
/// current exchangeModelObj
class ExchangeController extends GetxController {
  ExchangeController(this.exchangeModelObj);

  Rx<ExchangeModel> exchangeModelObj;
}
