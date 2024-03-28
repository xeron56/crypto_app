import '../../../core/app_export.dart';

/// This class is used in the [signin_item_widget] screen.
class SigninItemModel {
  SigninItemModel({
    this.subtitle,
    this.id,
  }) {
    subtitle = subtitle ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? subtitle;

  Rx<String>? id;
}
