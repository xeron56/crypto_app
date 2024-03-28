import 'octobertoday2_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [history_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryTwoModel {
  Rx<List<Octobertoday2ItemModel>> octobertoday2ItemList = Rx([
    Octobertoday2ItemModel(groupBy: "Today".obs),
    Octobertoday2ItemModel(groupBy: "Today".obs),
    Octobertoday2ItemModel(groupBy: "Today".obs),
    Octobertoday2ItemModel(groupBy: "2 october".obs),
    Octobertoday2ItemModel(groupBy: "2 october".obs)
  ]);
}
