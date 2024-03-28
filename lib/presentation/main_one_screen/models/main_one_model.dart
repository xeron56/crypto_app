import '../../../core/app_export.dart';
import 'mainone_item_model.dart';

/// This class defines the variables used in the [main_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainOneModel {
  Rx<List<MainoneItemModel>> mainoneItemList = Rx([
    MainoneItemModel(
        alanDenver: ImageConstant.imgMemoji142.obs,
        title: "Alan Denver".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "+280.00".obs),
    MainoneItemModel(
        alanDenver: ImageConstant.imgMemoji121.obs,
        title: "Glad Valakas".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "-280.00".obs),
    MainoneItemModel(
        alanDenver: ImageConstant.imgMemoji211.obs,
        title: "Paul Landers".obs,
        subtitle: "Mastercard • 7682".obs,
        price: "+280.00".obs),
    MainoneItemModel(
        title: "KFC".obs,
        subtitle: "Mastercard • 1541".obs,
        price: "-30.00".obs)
  ]);
}
