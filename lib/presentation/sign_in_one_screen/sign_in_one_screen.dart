import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/core/utils/validation_functions.dart';
import 'package:crypto_app/widgets/custom_text_form_field.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/sign_in_one_controller.dart';

// ignore_for_file: must_be_immutable
class SignInOneScreen extends GetWidget<SignInOneController> {
  SignInOneScreen({Key? key})
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
                      text: "msg_continue_with_email".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 10.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                    ),
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
}
