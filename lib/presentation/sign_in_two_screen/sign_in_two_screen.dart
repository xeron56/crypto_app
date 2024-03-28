import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/core/utils/validation_functions.dart';
import 'package:crypto_app/widgets/custom_text_form_field.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/sign_in_two_controller.dart';

// ignore_for_file: must_be_immutable
class SignInTwoScreen extends GetWidget<SignInTwoController> {
  SignInTwoScreen({Key? key})
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
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 46.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 242.h,
                      margin: EdgeInsets.only(right: 101.h),
                      child: Text(
                        "msg_enter_your_email".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineLarge!.copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildFrameNine(),
                    SizedBox(height: 29.v),
                    CustomElevatedButton(
                      text: "lbl_login".tr,
                    ),
                    SizedBox(height: 30.v),
                    _buildFifty(),
                    SizedBox(height: 5.v),
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
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.fromLTRB(20.h, 22.v, 339.h, 21.v),
      ),
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
            "lbl_email_address".tr,
            style: CustomTextStyles.labelLargeTeal50,
          ),
        ),
        SizedBox(height: 14.v),
        CustomTextFormField(
          controller: controller.emailController,
          hintText: "msg_maks8bit_gmail_com".tr,
          textInputAction: TextInputAction.done,
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
    );
  }

  /// Section Widget
  Widget _buildFifty() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 56.v,
          width: 98.h,
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcons8Google1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 56.v,
          width: 98.h,
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcons8Mac1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 56.v,
          width: 98.h,
          padding: EdgeInsets.symmetric(
            horizontal: 37.h,
            vertical: 16.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIcons8Facebook,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
