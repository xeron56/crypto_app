import '../../../core/app_export.dart';
import 'main_item_model.dart';

/// This class defines the variables used in the [main_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MainModel {
  Rx<List<MainItemModel>> mainItemList = Rx([
    MainItemModel(
        barbaraDuck: ImageConstant.imgMemoji142.obs,
        title: "Barbara Duck".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "+280.00".obs),
    MainItemModel(
        barbaraDuck: ImageConstant.imgMemoji121.obs,
        title: "Glad Valakas".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "-280.00".obs)
  ]);
}
