import '../../../core/app_export.dart';

/// This class is used in the [octobertoday_item_widget] screen.
class OctobertodayItemModel {
  OctobertodayItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
