import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/app_navigation_controller.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registration".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registrationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscription".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.subscriptionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Main Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Exchange - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.exchangeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Exchange Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exchangeFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Exchange Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exchangeFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Scan Item".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.scanItemScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "History Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.historyTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
