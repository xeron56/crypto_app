import '../../../core/app_export.dart';
import '../models/exchange_one_model.dart';

/// A controller class for the ExchangeOnePage.
///
/// This class manages the state of the ExchangeOnePage, including the
/// current exchangeOneModelObj
class ExchangeOneController extends GetxController {
  ExchangeOneController(this.exchangeOneModelObj);

  Rx<ExchangeOneModel> exchangeOneModelObj;
}
