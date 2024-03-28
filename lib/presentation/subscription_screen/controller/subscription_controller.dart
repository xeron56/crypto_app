import '../../../core/app_export.dart';
import '../models/subscription_model.dart';

/// A controller class for the SubscriptionScreen.
///
/// This class manages the state of the SubscriptionScreen, including the
/// current subscriptionModelObj
class SubscriptionController extends GetxController {
  Rx<SubscriptionModel> subscriptionModelObj = SubscriptionModel().obs;
}
