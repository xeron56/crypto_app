import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/onboarding_four_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingFourScreen extends GetWidget<OnboardingFourController> {
  const OnboardingFourScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 8.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 283.v,
                  width: 282.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Align(
                          alignment: Alignment.bottomLeft,
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
                                appTheme.whiteA700.withOpacity(0.42),
                                appTheme.whiteA700.withOpacity(0.42),
                              ],
                            ),
                            corners: Corners(
                              topLeft: Radius.circular(132),
                              topRight: Radius.circular(132),
                              bottomLeft: Radius.circular(132),
                              bottomRight: Radius.circular(132),
                            ),
                            child: Container(
                              height: 264.adaptSize,
                              width: 264.adaptSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  132.h,
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(0.5, 0.62),
                                  end: Alignment(0.5, -0.05),
                                  colors: [
                                    appTheme.whiteA700.withOpacity(0.42),
                                    appTheme.whiteA700.withOpacity(0.42),
                                    appTheme.whiteA700.withOpacity(0.42),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.img3gq3g41,
                        height: 256.adaptSize,
                        width: 256.adaptSize,
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70.v),
              Text(
                "lbl_hello_adam".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 14.v),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: 294.h,
                  margin: EdgeInsets.only(
                    left: 1.h,
                    right: 5.h,
                  ),
                  child: Text(
                    "msg_your_goals_will2".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallTeal50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
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
              SizedBox(height: 40.v),
              CustomElevatedButton(
                text: "lbl_next_step".tr,
                margin: EdgeInsets.symmetric(horizontal: 45.h),
              ),
              SizedBox(height: 5.v),
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
}
