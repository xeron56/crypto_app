import '../../../core/app_export.dart';

/// This class is used in the [settingstwo_item_widget] screen.
class SettingstwoItemModel {
  SettingstwoItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
