import '../../../core/app_export.dart';
import 'subscription_item_model.dart';

/// This class defines the variables used in the [subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscriptionModel {
  Rx<List<SubscriptionItemModel>> subscriptionItemList = Rx([
    SubscriptionItemModel(basic: "Basic".obs, price: "7 days free,19/mo".obs),
    SubscriptionItemModel(
        basic: "Startup".obs, price: " 30 days free, 145/mo".obs),
    SubscriptionItemModel(
        basic: "Enterprice".obs, price: " 30 days free, 545/mo".obs)
  ]);
}
