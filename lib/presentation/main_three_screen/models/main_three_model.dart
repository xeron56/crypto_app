import '../../../core/app_export.dart';
import 'mainthree_item_model.dart';

/// This class defines the variables used in the [main_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainThreeModel {
  Rx<List<MainthreeItemModel>> mainthreeItemList = Rx([
    MainthreeItemModel(
        barbaraDuck: ImageConstant.imgMemoji142.obs,
        title: "Barbara Duck".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "+280.00".obs),
    MainthreeItemModel(
        barbaraDuck: ImageConstant.imgMemoji211.obs,
        title: "Sergey Simonov".obs,
        subtitle: "Mastercard • 7682".obs,
        price: "+280.00".obs),
    MainthreeItemModel(
        barbaraDuck: ImageConstant.imgMemoji142.obs,
        title: "Russ Gitelman".obs,
        subtitle: "Mastercard • 7682".obs,
        price: "+280.00".obs),
    MainthreeItemModel(
        barbaraDuck: ImageConstant.imgMemoji121.obs,
        title: "Den Petrov".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "-280.00".obs),
    MainthreeItemModel(
        barbaraDuck: ImageConstant.imgMemoji211.obs,
        title: "Alex Adams".obs,
        subtitle: "Mastercard • 7682".obs,
        price: "+280.00".obs),
    MainthreeItemModel(
        title: "Netflix".obs,
        subtitle: "Mastercard • 1541".obs,
        price: "-10.00".obs),
    MainthreeItemModel(
        title: "KFC".obs,
        subtitle: "Mastercard • 1541".obs,
        price: "-30.00".obs),
    MainthreeItemModel(
        title: "Steam Pay".obs,
        subtitle: "Mastercard • 1546".obs,
        price: "-14.00".obs)
  ]);
}
