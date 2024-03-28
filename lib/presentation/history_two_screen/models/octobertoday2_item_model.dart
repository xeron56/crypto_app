import '../../../core/app_export.dart';

/// This class is used in the [octobertoday2_item_widget] screen.
class Octobertoday2ItemModel {
  Octobertoday2ItemModel({
    this.groupBy,
    this.id,
  }) {
    groupBy = groupBy ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? groupBy;

  Rx<String>? id;
}
