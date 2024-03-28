import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/onboarding_three_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 39.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_choose".tr,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 6.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_step_2".tr,
                    style: CustomTextStyles.titleSmallTeal50,
                  ),
                ),
              ),
              SizedBox(height: 57.v),
              _buildNordBank(),
              SizedBox(height: 76.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 34.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 14.v,
                          bottom: 17.v,
                        ),
                        child: Text(
                          "lbl_next_step".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: CustomIconButton(
                          height: 49.adaptSize,
                          width: 49.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          decoration: IconButtonStyleHelper.fillPrimary,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                          ),
                        ),
                      ),
                    ],
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.fromLTRB(20.h, 22.v, 339.h, 21.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildNordBank() {
    return SizedBox(
      height: 373.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                right: 216.h,
                bottom: 16.v,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.whiteA700.withOpacity(0.09),
                    appTheme.whiteA700.withOpacity(0.01),
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 35.h,
                    vertical: 58.v,
                  ),
                  decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder70,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_payments".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 150.h,
                right: 150.h,
                bottom: 5.v,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.whiteA700.withOpacity(0.09),
                    appTheme.whiteA700.withOpacity(0.01),
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(37),
                  topRight: Radius.circular(37),
                  bottomLeft: Radius.circular(37),
                  bottomRight: Radius.circular(37),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 19.h,
                    vertical: 27.v,
                  ),
                  decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder37,
                  ),
                  child: Text(
                    "lbl_visa".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 113.h,
                top: 103.v,
                right: 108.h,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.blueA700,
                    appTheme.whiteA700.withOpacity(0.01),
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(77),
                  topRight: Radius.circular(77),
                  bottomLeft: Radius.circular(77),
                  bottomRight: Radius.circular(77),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 44.h,
                    vertical: 61.v,
                  ),
                  decoration: AppDecoration.gradientBlueAToBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder77,
                  ),
                  child: Text(
                    "lbl_bitcoin".tr,
                    style: CustomTextStyles.titleMediumPoppins,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(left: 218.h),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.blueA700,
                    appTheme.whiteA700.withOpacity(0.01),
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(79),
                  topRight: Radius.circular(79),
                  bottomLeft: Radius.circular(79),
                  bottomRight: Radius.circular(79),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 31.h,
                    vertical: 62.v,
                  ),
                  decoration: AppDecoration.gradientBlueAToBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder77,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_payments".tr,
                        style: CustomTextStyles.titleMediumPoppins,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 195.h,
                top: 6.v,
                right: 68.h,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.whiteA700.withOpacity(0.09),
                    appTheme.whiteA700.withOpacity(0.01),
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(56),
                  topRight: Radius.circular(56),
                  bottomLeft: Radius.circular(56),
                  bottomRight: Radius.circular(56),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 41.h,
                    vertical: 45.v,
                  ),
                  decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder56,
                  ),
                  child: Text(
                    "lbl_xrp".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 128.v,
              width: 110.h,
              margin: EdgeInsets.only(top: 90.v),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse78,
                    width: 110.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.h),
                      child: Text(
                        "msg_etherium_classic".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 154.v,
              width: 116.h,
              margin: EdgeInsets.only(top: 71.v),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse77,
                    width: 116.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "lbl_trading".tr,
                        style: CustomTextStyles.titleMediumPoppins,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 81.h,
                right: 180.h,
              ),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.whiteA700.withOpacity(0.09),
                    appTheme.whiteA700.withOpacity(0.01),
                  ],
                ),
                corners: Corners(
                  topLeft: Radius.circular(57),
                  topRight: Radius.circular(57),
                  bottomLeft: Radius.circular(57),
                  bottomRight: Radius.circular(57),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.h,
                    vertical: 47.v,
                  ),
                  decoration: AppDecoration.gradientWhiteAToWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder56,
                  ),
                  child: Text(
                    "lbl_usd".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
