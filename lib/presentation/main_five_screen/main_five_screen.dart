import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:crypto_app/widgets/custom_text_form_field.dart';
import 'package:crypto_app/widgets/custom_switch.dart';
import 'package:crypto_app/widgets/custom_outlined_button.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/main_five_controller.dart';

// ignore_for_file: must_be_immutable
class MainFiveScreen extends GetWidget<MainFiveController> {
  const MainFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_create_template2".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 26.v),
              _buildFrameNine(),
              SizedBox(height: 24.v),
              _buildFrameTen(),
              SizedBox(height: 23.v),
              _buildFrameTwelve(),
              SizedBox(height: 29.v),
              _buildProfileSettings(),
              SizedBox(height: 20.v),
              _buildProfileSettings1(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildCreate(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_payments".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCloseTeal50,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameNine() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.3,
          child: Text(
            "lbl_name".tr,
            style: CustomTextStyles.labelLargeTeal50,
          ),
        ),
        SizedBox(height: 15.v),
        CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_for_office_rent".tr,
          borderDecoration: TextFormFieldStyleHelper.underLineTeal1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameTen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.3,
          child: Text(
            "msg_beneficiary_s_account".tr,
            style: CustomTextStyles.labelLargeTeal50,
          ),
        ),
        SizedBox(height: 14.v),
        CustomTextFormField(
          controller: controller.subtitleController,
          hintText: "msg_88005553535047500001".tr,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.underLineTeal1,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameTwelve() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.3,
          child: Text(
            "lbl_date".tr,
            style: CustomTextStyles.labelLargeTeal50,
          ),
        ),
        SizedBox(height: 14.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 17.v),
              child: Text(
                "lbl_21_03_2021".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Expanded(
              child: Opacity(
                opacity: 0.2,
                child: Padding(
                  padding: EdgeInsets.only(top: 34.v),
                  child: Divider(
                    color: appTheme.teal50.withOpacity(0.42),
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(bottom: 11.v),
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfileSettings() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgUserTeal5040x40,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_monthly_payment".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Obx(
            () => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSettings1() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettingsTeal50,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_team".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Container(
            height: 33.v,
            width: 156.h,
            margin: EdgeInsets.only(top: 1.v),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    decoration: AppDecoration.outlineBluegray900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMemoji142,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(left: 20.h),
                    decoration: AppDecoration.outlineBluegray9001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMemoji121,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(left: 40.h),
                    decoration: AppDecoration.outlineBluegray9002.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMemoji201,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    decoration: AppDecoration.outlineBluegray9003.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMemoji211,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(right: 44.h),
                    decoration: AppDecoration.outlineBluegray9004.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMemoji071,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomOutlinedButton(
                  width: 32.h,
                  text: "lbl_8".tr.toUpperCase(),
                  margin: EdgeInsets.only(right: 24.h),
                  alignment: Alignment.centerRight,
                ),
                CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.outlineBlueGray,
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEAdd3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreate() {
    return CustomElevatedButton(
      text: "lbl_create".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 64.v,
      ),
    );
  }
}
