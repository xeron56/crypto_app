import 'package:get/get.dart';
import '../presentation/onboarding_screen/onboarding_screen.dart';
import '../presentation/onboarding_screen/binding/onboarding_binding.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/onboarding_one_screen/binding/onboarding_one_binding.dart';
import '../presentation/onboarding_two_screen/onboarding_two_screen.dart';
import '../presentation/onboarding_two_screen/binding/onboarding_two_binding.dart';
import '../presentation/onboarding_three_screen/onboarding_three_screen.dart';
import '../presentation/onboarding_three_screen/binding/onboarding_three_binding.dart';
import '../presentation/onboarding_four_screen/onboarding_four_screen.dart';
import '../presentation/onboarding_four_screen/binding/onboarding_four_binding.dart';
import '../presentation/onboarding_five_screen/onboarding_five_screen.dart';
import '../presentation/onboarding_five_screen/binding/onboarding_five_binding.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_in_screen/binding/sign_in_binding.dart';
import '../presentation/sign_in_one_screen/sign_in_one_screen.dart';
import '../presentation/sign_in_one_screen/binding/sign_in_one_binding.dart';
import '../presentation/sign_in_two_screen/sign_in_two_screen.dart';
import '../presentation/sign_in_two_screen/binding/sign_in_two_binding.dart';
import '../presentation/sign_in_three_screen/sign_in_three_screen.dart';
import '../presentation/sign_in_three_screen/binding/sign_in_three_binding.dart';
import '../presentation/registration_screen/registration_screen.dart';
import '../presentation/registration_screen/binding/registration_binding.dart';
import '../presentation/subscription_screen/subscription_screen.dart';
import '../presentation/subscription_screen/binding/subscription_binding.dart';
import '../presentation/main_container_screen/main_container_screen.dart';
import '../presentation/main_container_screen/binding/main_container_binding.dart';
import '../presentation/main_one_screen/main_one_screen.dart';
import '../presentation/main_one_screen/binding/main_one_binding.dart';
import '../presentation/main_two_screen/main_two_screen.dart';
import '../presentation/main_two_screen/binding/main_two_binding.dart';
import '../presentation/main_three_screen/main_three_screen.dart';
import '../presentation/main_three_screen/binding/main_three_binding.dart';
import '../presentation/main_four_screen/main_four_screen.dart';
import '../presentation/main_four_screen/binding/main_four_binding.dart';
import '../presentation/main_five_screen/main_five_screen.dart';
import '../presentation/main_five_screen/binding/main_five_binding.dart';
import '../presentation/exchange_tab_container_screen/exchange_tab_container_screen.dart';
import '../presentation/exchange_tab_container_screen/binding/exchange_tab_container_binding.dart';
import '../presentation/exchange_four_screen/exchange_four_screen.dart';
import '../presentation/exchange_four_screen/binding/exchange_four_binding.dart';
import '../presentation/exchange_five_screen/exchange_five_screen.dart';
import '../presentation/exchange_five_screen/binding/exchange_five_binding.dart';
import '../presentation/scan_item_screen/scan_item_screen.dart';
import '../presentation/scan_item_screen/binding/scan_item_binding.dart';
import '../presentation/history_screen/history_screen.dart';
import '../presentation/history_screen/binding/history_binding.dart';
import '../presentation/history_one_screen/history_one_screen.dart';
import '../presentation/history_one_screen/binding/history_one_binding.dart';
import '../presentation/history_two_screen/history_two_screen.dart';
import '../presentation/history_two_screen/binding/history_two_binding.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/profile_screen/binding/profile_binding.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/settings_screen/binding/settings_binding.dart';
import '../presentation/settings_one_screen/settings_one_screen.dart';
import '../presentation/settings_one_screen/binding/settings_one_binding.dart';
import '../presentation/settings_two_screen/settings_two_screen.dart';
import '../presentation/settings_two_screen/binding/settings_two_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String signInTwoScreen = '/sign_in_two_screen';

  static const String signInThreeScreen = '/sign_in_three_screen';

  static const String registrationScreen = '/registration_screen';

  static const String subscriptionScreen = '/subscription_screen';

  static const String mainPage = '/main_page';

  static const String mainContainerScreen = '/main_container_screen';

  static const String mainOneScreen = '/main_one_screen';

  static const String mainTwoScreen = '/main_two_screen';

  static const String mainThreeScreen = '/main_three_screen';

  static const String mainFourScreen = '/main_four_screen';

  static const String mainFiveScreen = '/main_five_screen';

  static const String exchangePage = '/exchange_page';

  static const String exchangeTabContainerScreen =
      '/exchange_tab_container_screen';

  static const String exchangeOnePage = '/exchange_one_page';

  static const String exchangeTwoPage = '/exchange_two_page';

  static const String exchangeThreePage = '/exchange_three_page';

  static const String exchangeFourScreen = '/exchange_four_screen';

  static const String exchangeFiveScreen = '/exchange_five_screen';

  static const String exchangeSixPage = '/exchange_six_page';

  static const String scanItemScreen = '/scan_item_screen';

  static const String historyScreen = '/history_screen';

  static const String historyOneScreen = '/history_one_screen';

  static const String historyTwoScreen = '/history_two_screen';

  static const String profileScreen = '/profile_screen';

  static const String settingsScreen = '/settings_screen';

  static const String settingsOneScreen = '/settings_one_screen';

  static const String settingsTwoScreen = '/settings_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: onboardingOneScreen,
      page: () => OnboardingOneScreen(),
      bindings: [
        OnboardingOneBinding(),
      ],
    ),
    GetPage(
      name: onboardingTwoScreen,
      page: () => OnboardingTwoScreen(),
      bindings: [
        OnboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: onboardingThreeScreen,
      page: () => OnboardingThreeScreen(),
      bindings: [
        OnboardingThreeBinding(),
      ],
    ),
    GetPage(
      name: onboardingFourScreen,
      page: () => OnboardingFourScreen(),
      bindings: [
        OnboardingFourBinding(),
      ],
    ),
    GetPage(
      name: onboardingFiveScreen,
      page: () => OnboardingFiveScreen(),
      bindings: [
        OnboardingFiveBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signInOneScreen,
      page: () => SignInOneScreen(),
      bindings: [
        SignInOneBinding(),
      ],
    ),
    GetPage(
      name: signInTwoScreen,
      page: () => SignInTwoScreen(),
      bindings: [
        SignInTwoBinding(),
      ],
    ),
    GetPage(
      name: signInThreeScreen,
      page: () => SignInThreeScreen(),
      bindings: [
        SignInThreeBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: subscriptionScreen,
      page: () => SubscriptionScreen(),
      bindings: [
        SubscriptionBinding(),
      ],
    ),
    GetPage(
      name: mainContainerScreen,
      page: () => MainContainerScreen(),
      bindings: [
        MainContainerBinding(),
      ],
    ),
    GetPage(
      name: mainOneScreen,
      page: () => MainOneScreen(),
      bindings: [
        MainOneBinding(),
      ],
    ),
    GetPage(
      name: mainTwoScreen,
      page: () => MainTwoScreen(),
      bindings: [
        MainTwoBinding(),
      ],
    ),
    GetPage(
      name: mainThreeScreen,
      page: () => MainThreeScreen(),
      bindings: [
        MainThreeBinding(),
      ],
    ),
    GetPage(
      name: mainFourScreen,
      page: () => MainFourScreen(),
      bindings: [
        MainFourBinding(),
      ],
    ),
    GetPage(
      name: mainFiveScreen,
      page: () => MainFiveScreen(),
      bindings: [
        MainFiveBinding(),
      ],
    ),
    GetPage(
      name: exchangeTabContainerScreen,
      page: () => ExchangeTabContainerScreen(),
      bindings: [
        ExchangeTabContainerBinding(),
      ],
    ),
    GetPage(
      name: exchangeFourScreen,
      page: () => ExchangeFourScreen(),
      bindings: [
        ExchangeFourBinding(),
      ],
    ),
    GetPage(
      name: exchangeFiveScreen,
      page: () => ExchangeFiveScreen(),
      bindings: [
        ExchangeFiveBinding(),
      ],
    ),
    GetPage(
      name: scanItemScreen,
      page: () => ScanItemScreen(),
      bindings: [
        ScanItemBinding(),
      ],
    ),
    GetPage(
      name: historyScreen,
      page: () => HistoryScreen(),
      bindings: [
        HistoryBinding(),
      ],
    ),
    GetPage(
      name: historyOneScreen,
      page: () => HistoryOneScreen(),
      bindings: [
        HistoryOneBinding(),
      ],
    ),
    GetPage(
      name: historyTwoScreen,
      page: () => HistoryTwoScreen(),
      bindings: [
        HistoryTwoBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: settingsOneScreen,
      page: () => SettingsOneScreen(),
      bindings: [
        SettingsOneBinding(),
      ],
    ),
    GetPage(
      name: settingsTwoScreen,
      page: () => SettingsTwoScreen(),
      bindings: [
        SettingsTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    )
  ];
}
