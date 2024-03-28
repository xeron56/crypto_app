import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/onboarding_controller.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

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
                      Container(
                          height: 93.adaptSize,
                          width: 93.adaptSize,
                          padding: EdgeInsets.all(21.h),
                          decoration: AppDecoration
                              .gradientSecondaryContainerToDeepPurple
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder19),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgTelevision,
                              width: 50.h,
                              alignment: Alignment.center)),
                      SizedBox(height: 31.v),
                      Text("lbl_rypter".tr,
                          style: CustomTextStyles.displayMediumMontserrat)
                    ]))));
  }
}
