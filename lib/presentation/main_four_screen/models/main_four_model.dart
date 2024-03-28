import '../../../core/app_export.dart';
import 'mainfour_item_model.dart';

/// This class defines the variables used in the [main_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MainFourModel {
  Rx<List<MainfourItemModel>> mainfourItemList = Rx([
    MainfourItemModel(
        close: ImageConstant.imgClose.obs,
        phone: "Add New".obs,
        createtemplate: "Create template".obs),
    MainfourItemModel(
        close: ImageConstant.imgHomeBlueGray700.obs,
        phone: "Amanda Adams".obs,
        createtemplate: "35.00".obs),
    MainfourItemModel(phone: "Netflix".obs, createtemplate: "35.00".obs),
    MainfourItemModel(phone: "Steam".obs, createtemplate: "15.00".obs)
  ]);
}
