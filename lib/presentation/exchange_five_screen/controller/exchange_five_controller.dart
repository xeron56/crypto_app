import '../../../core/app_export.dart';
import '../models/exchange_five_model.dart';

/// A controller class for the ExchangeFiveScreen.
///
/// This class manages the state of the ExchangeFiveScreen, including the
/// current exchangeFiveModelObj
class ExchangeFiveController extends GetxController {
  Rx<ExchangeFiveModel> exchangeFiveModelObj = ExchangeFiveModel().obs;
}
