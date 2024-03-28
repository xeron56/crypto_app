import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/onboarding_one_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingOneScreen extends GetWidget<OnboardingOneController> {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 49.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.centerRight,
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
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 122.h),
                    child: Container(
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0.62),
                          end: Alignment(0.5, -0.05),
                          colors: [
                            appTheme.whiteA700.withOpacity(0.03),
                            appTheme.whiteA700.withOpacity(0.08),
                            appTheme.whiteA700.withOpacity(0.42),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              SizedBox(
                height: 215.v,
                width: 271.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 102.adaptSize,
                        width: 102.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 38.h,
                          vertical: 31.v,
                        ),
                        decoration:
                            AppDecoration.gradientWhiteAToWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder51,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.img,
                          width: 24.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 188.adaptSize,
                        width: 188.adaptSize,
                        margin: EdgeInsets.only(bottom: 7.v),
                        decoration:
                            AppDecoration.gradientWhiteAToWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder94,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.img,
                          width: 40.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 84.adaptSize,
                        width: 84.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 29.h,
                          vertical: 22.v,
                        ),
                        decoration:
                            AppDecoration.gradientWhiteAToWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder42,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.img,
                          width: 24.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
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
                          topLeft: Radius.circular(13),
                          topRight: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 9.v,
                            right: 21.h,
                          ),
                          child: Container(
                            height: 26.adaptSize,
                            width: 26.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                13.h,
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0.62),
                                end: Alignment(0.5, -0.05),
                                colors: [
                                  appTheme.whiteA700.withOpacity(0.03),
                                  appTheme.whiteA700.withOpacity(0.08),
                                  appTheme.whiteA700.withOpacity(0.42),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
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
                            appTheme.whiteA700.withOpacity(0.09),
                            appTheme.whiteA700.withOpacity(0.01),
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 22.h,
                            bottom: 22.v,
                          ),
                          child: Container(
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0.62),
                                end: Alignment(0.5, -0.05),
                                colors: [
                                  appTheme.whiteA700.withOpacity(0.03),
                                  appTheme.whiteA700.withOpacity(0.08),
                                  appTheme.whiteA700.withOpacity(0.42),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              Align(
                alignment: Alignment.centerRight,
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
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 109.h),
                    child: Container(
                      height: 25.adaptSize,
                      width: 25.adaptSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          12.h,
                        ),
                        gradient: LinearGradient(
                          begin: Alignment(0.5, 0.62),
                          end: Alignment(0.5, -0.05),
                          colors: [
                            appTheme.whiteA700.withOpacity(0.03),
                            appTheme.whiteA700.withOpacity(0.08),
                            appTheme.whiteA700.withOpacity(0.42),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 76.v),
              Text(
                "lbl_how_it_works".tr,
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 25.v),
              Opacity(
                opacity: 0.5,
                child: Container(
                  width: 261.h,
                  margin: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Text(
                    "msg_your_goals_will".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallTeal50,
                  ),
                ),
              ),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "lbl_next_step".tr,
                margin: EdgeInsets.symmetric(horizontal: 33.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
