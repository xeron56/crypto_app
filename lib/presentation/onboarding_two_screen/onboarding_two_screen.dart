import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/onboarding_two_controller.dart';

// ignore_for_file: must_be_immutable
class OnboardingTwoScreen extends GetWidget<OnboardingTwoController> {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 45.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_good_morning".tr,
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 1.v),
              Opacity(
                opacity: 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_welcome_to_your".tr,
                    style: CustomTextStyles.titleSmallTeal50,
                  ),
                ),
              ),
              SizedBox(height: 34.v),
              SizedBox(
                height: 560.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup45996,
                      height: 155.v,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(
                        top: 28.v,
                        right: 52.h,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector20,
                      width: 375.h,
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 69.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 39.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup6,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            Opacity(
                              opacity: 0.5,
                              child: SizedBox(
                                width: 224.h,
                                child: Text(
                                  "msg_you_can_track_your".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.titleSmallTeal50,
                                ),
                              ),
                            ),
                            SizedBox(height: 40.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 18.h),
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
                                        "lbl_skip_and_start".tr,
                                        style: theme.textTheme.titleSmall,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: CustomIconButton(
                                        height: 49.adaptSize,
                                        width: 49.adaptSize,
                                        padding: EdgeInsets.all(12.h),
                                        decoration:
                                            IconButtonStyleHelper.fillPrimary,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgOverflowMenu,
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
                  ],
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
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCloseSquare,
          margin: EdgeInsets.all(16.h),
        ),
      ],
    );
  }
}
