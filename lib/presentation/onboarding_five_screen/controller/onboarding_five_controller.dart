import '../../../core/app_export.dart';
import '../models/onboarding_five_model.dart';

/// A controller class for the OnboardingFiveScreen.
///
/// This class manages the state of the OnboardingFiveScreen, including the
/// current onboardingFiveModelObj
class OnboardingFiveController extends GetxController {
  Rx<OnboardingFiveModel> onboardingFiveModelObj = OnboardingFiveModel().obs;
}
