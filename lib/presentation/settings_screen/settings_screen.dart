import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/custom_text_form_field.dart';
import 'package:crypto_app/core/utils/validation_functions.dart';
import 'package:crypto_app/widgets/custom_outlined_button.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'widgets/settings_item_widget.dart';
import 'models/settings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/settings_controller.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends GetWidget<SettingsController> {
  SettingsScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    SizedBox(height: 11.v),
                    SizedBox(
                      height: 125.adaptSize,
                      width: 125.adaptSize,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 88.adaptSize,
                              width: 88.adaptSize,
                              decoration: AppDecoration.fillGreenA.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder42,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMemoji121,
                                height: 88.adaptSize,
                                width: 88.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 125.adaptSize,
                              width: 125.adaptSize,
                              padding: EdgeInsets.all(40.h),
                              decoration: AppDecoration
                                  .gradientWhiteAFToGray10000
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder19,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCamera,
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildFrameNine(),
                    SizedBox(height: 23.v),
                    _buildFrameTen(),
                    SizedBox(height: 39.v),
                    _buildFrameEleven(),
                    SizedBox(height: 19.v),
                    _buildProfileSettings(),
                    SizedBox(height: 27.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_cards".tr,
                          style: CustomTextStyles.titleMediumPoppins,
                        ),
                      ),
                    ),
                    SizedBox(height: 19.v),
                    _buildSettings(),
                  ],
                ),
              ),
            ),
          ),
        ),
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
        text: "lbl_settings".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNine() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
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
            hintText: "lbl_alex_adams".tr,
            borderDecoration: TextFormFieldStyleHelper.underLineTeal1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTen() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.3,
            child: Text(
              "lbl_email_address".tr,
              style: CustomTextStyles.labelLargeTeal50,
            ),
          ),
          SizedBox(height: 14.v),
          CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_max8bit_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            suffix: Container(
              margin: EdgeInsets.only(
                left: 30.h,
                bottom: 11.v,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmarkPrimary,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 35.v,
            ),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(vertical: 1.v),
            borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameEleven() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.3,
            child: Text(
              "lbl_enter_password".tr,
              style: CustomTextStyles.labelLargeTeal50,
            ),
          ),
          SizedBox(height: 12.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "lbl".tr,
              hintStyle: CustomTextStyles.titleSmallTeal50,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                  margin: EdgeInsets.only(
                    left: 30.h,
                    top: 1.v,
                    bottom: 11.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 36.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSettings() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
  Widget _buildSettings() {
    return SizedBox(
      height: 169.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 11.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 15.h,
            );
          },
          itemCount:
              controller.settingsModelObj.value.settingsItemList.value.length,
          itemBuilder: (context, index) {
            SettingsItemModel model =
                controller.settingsModelObj.value.settingsItemList.value[index];
            return SettingsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
