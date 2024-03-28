import '../../../core/app_export.dart';

/// This class is used in the [settingsone_item_widget] screen.
class SettingsoneItemModel {
  SettingsoneItemModel({
    this.subtitle,
    this.subtitle1,
    this.id,
  }) {
    subtitle = subtitle ?? Rx("Card Number");
    subtitle1 = subtitle1 ?? Rx("5469 5400 1427 2122");
    id = id ?? Rx("");
  }

  Rx<String>? subtitle;

  Rx<String>? subtitle1;

  Rx<String>? id;
}
