import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/profile_controller.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
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
            horizontal: 12.h,
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  right: 71.h,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 62.adaptSize,
                      width: 62.adaptSize,
                      margin: EdgeInsets.only(top: 6.v),
                      decoration: AppDecoration.fillGreenA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder29,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMemoji121,
                        height: 62.adaptSize,
                        width: 62.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_alex_adams".tr,
                            style: CustomTextStyles.headlineLargeWhiteA700,
                          ),
                          Text(
                            "lbl_adams_email_com".tr,
                            style:
                                CustomTextStyles.titleMediumBluegray500SemiBold,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.v),
              _buildFifteen(),
              SizedBox(height: 30.v),
              _buildComponentOne(),
              SizedBox(height: 30.v),
              _buildComponentTwo(),
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
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_profile".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFifteen() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 1.v,
              ),
              child: Text(
                "lbl_usd".tr,
                style: CustomTextStyles.bodySmallTeal50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
            ),
            child: Text(
              "lbl_74_26".tr,
              style: CustomTextStyles.labelLargeTeal50_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLightBulb,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(left: 5.h),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 21.h,
                top: 1.v,
              ),
              child: Text(
                "lbl_eur".tr,
                style: CustomTextStyles.bodySmallTeal50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
            ),
            child: Text(
              "lbl_89_40".tr,
              style: CustomTextStyles.labelLargeTeal50_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLightBulb,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(left: 5.h),
          ),
          Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                top: 1.v,
              ),
              child: Text(
                "lbl_gbp".tr,
                style: CustomTextStyles.bodySmallTeal50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
            ),
            child: Text(
              "lbl_101_83".tr,
              style: CustomTextStyles.labelLargeTeal50_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightCyan300,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(left: 5.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentOne() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0, 0.94),
          end: Alignment(1.26, 0.14),
          colors: [
            appTheme.cyan30001,
            appTheme.greenA100,
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
            horizontal: 19.h,
            vertical: 18.v,
          ),
          decoration: AppDecoration.outline6.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder19,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_cryptonite_premium".tr,
                style: CustomTextStyles.titleMediumPoppins,
              ),
              SizedBox(height: 7.v),
              Container(
                width: 284.h,
                margin: EdgeInsets.only(right: 18.h),
                child: Text(
                  "msg_pay_for_your_favorite".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallBluegray200,
                ),
              ),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                height: 44.v,
                text: "lbl_more_info".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientCyanToGreenADecoration,
                buttonTextStyle: CustomTextStyles.titleSmallGray900,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwo() {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBluegray700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_cashback".tr,
                  style: CustomTextStyles.titleMediumPoppins,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_all_160".tr,
                    style: CustomTextStyles.titleMediumPrimary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMemoji14240x40,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_kfc".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "lbl_fastfood_20".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3.v),
                child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillTealTL17,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrame107,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMemoji1421,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_steam".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_games_and_programs".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
                child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillTealTL171,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkTeal50,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMemoji1422,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_netflix".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "msg_streaming_tv".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 4.v,
                ),
                child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillTealTL171,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkTeal50,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
