import '../../../core/app_export.dart';

/// This class is used in the [mainfour_item_widget] screen.
class MainfourItemModel {
  MainfourItemModel({
    this.close,
    this.phone,
    this.createtemplate,
    this.id,
  }) {
    close = close ?? Rx(ImageConstant.imgClose);
    phone = phone ?? Rx("Add New");
    createtemplate = createtemplate ?? Rx("Create template");
    id = id ?? Rx("");
  }

  Rx<String>? close;

  Rx<String>? phone;

  Rx<String>? createtemplate;

  Rx<String>? id;
}
