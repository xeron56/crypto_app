import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/onboarding_five_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingFiveScreen extends GetWidget<OnboardingFiveController> {
  const OnboardingFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              _buildNordBank(),
              SizedBox(height: 77.v),
              Text(
                "lbl_how_it_works".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 15.v),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: 329.h,
                  margin: EdgeInsets.only(
                    left: 22.h,
                    right: 23.h,
                  ),
                  child: Text(
                    "msg_you_can_track_your".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallTeal50,
                  ),
                ),
              ),
              SizedBox(height: 46.v),
              SizedBox(
                height: 5.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 5,
                    activeDotColor: appTheme.teal50,
                    dotColor: appTheme.teal50.withOpacity(0.46),
                    dotHeight: 5.v,
                    dotWidth: 5.h,
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              CustomElevatedButton(
                text: "msg_continue_with_email".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmark,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
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
  Widget _buildNordBank() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 310.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 293.h),
                child: _buildWidget(
                  image: ImageConstant.img,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 65.h),
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
                      end: Alignment(0.3, 1.02),
                      colors: [
                        appTheme.whiteA700.withOpacity(0.17),
                        appTheme.whiteA700.withOpacity(0),
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 83.h,
                        vertical: 40.v,
                      ),
                      decoration:
                          AppDecoration.gradientWhiteAToWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder19,
                      ),
                      child: Text(
                        "lbl_payments".tr,
                        style: CustomTextStyles.titleMediumSemiBold,
                      ),
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.img222erb21er3223,
                height: 244.adaptSize,
                width: 244.adaptSize,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 16.v),
              ),
              Padding(
                padding: EdgeInsets.only(right: 293.h),
                child: _buildWidget(
                  image: ImageConstant.img,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildWidget({required String image}) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.5, 0),
        end: Alignment(0.3, 1.02),
        colors: [
          appTheme.whiteA700.withOpacity(0.17),
          appTheme.whiteA700.withOpacity(0),
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 39.h,
          vertical: 91.v,
        ),
        decoration: AppDecoration.gradientWhiteAToWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder19,
        ),
        child: Container(
          height: 81.adaptSize,
          width: 81.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 9.v,
          ),
          decoration: AppDecoration.gradientCyanToGreenA.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder42,
          ),
          child: CustomImageView(
            imagePath: image,
            width: 40.h,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
