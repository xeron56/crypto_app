import '../../../core/app_export.dart';
import 'signin_item_model.dart';

/// This class defines the variables used in the [sign_in_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SignInModel {
  Rx<List<SigninItemModel>> signinItemList = Rx([
    SigninItemModel(subtitle: "1".obs),
    SigninItemModel(subtitle: "2".obs),
    SigninItemModel(subtitle: "3".obs),
    SigninItemModel(subtitle: "4".obs),
    SigninItemModel(subtitle: "5".obs),
    SigninItemModel(subtitle: "6".obs),
    SigninItemModel(subtitle: "7".obs),
    SigninItemModel(subtitle: "8".obs),
    SigninItemModel(subtitle: "9".obs)
  ]);
}
