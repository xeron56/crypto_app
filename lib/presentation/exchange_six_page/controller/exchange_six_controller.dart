import '../../../core/app_export.dart';
import '../models/exchange_six_model.dart';

/// A controller class for the ExchangeSixPage.
///
/// This class manages the state of the ExchangeSixPage, including the
/// current exchangeSixModelObj
class ExchangeSixController extends GetxController {
  ExchangeSixController(this.exchangeSixModelObj);

  Rx<ExchangeSixModel> exchangeSixModelObj;
}
