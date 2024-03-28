import 'octobertoday_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [history_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryOneModel {
  Rx<List<OctobertodayItemModel>> octobertodayItemList = Rx([
    OctobertodayItemModel(groupBy: "Today".obs),
    OctobertodayItemModel(groupBy: "Today".obs),
    OctobertodayItemModel(groupBy: "Today".obs),
    OctobertodayItemModel(groupBy: "2 october".obs),
    OctobertodayItemModel(groupBy: "2 october".obs)
  ]);
}
