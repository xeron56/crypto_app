import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/core/utils/validation_functions.dart';
import 'package:crypto_app/widgets/custom_text_form_field.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/registration_controller.dart';

// ignore_for_file: must_be_immutable
class RegistrationScreen extends GetWidget<RegistrationController> {
  RegistrationScreen({Key? key})
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
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_registration".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 35.v),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 112.h),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder59,
                      ),
                      child: Container(
                        height: 118.adaptSize,
                        width: 118.adaptSize,
                        padding: EdgeInsets.all(35.h),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder59,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCamera,
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 45.v),
                    _buildFrameNine(),
                    SizedBox(height: 33.v),
                    _buildPassword(),
                    SizedBox(height: 23.v),
                    _buildPassword1(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildRegister(),
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
            "lbl_enter_your_name".tr,
            style: CustomTextStyles.labelLargeTeal50,
          ),
        ),
        SizedBox(height: 16.v),
        CustomTextFormField(
          controller: controller.nameController,
          hintText: "msg_maks8bit_gmail_com".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
          borderDecoration: TextFormFieldStyleHelper.underLineTeal,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        hintStyle: CustomTextStyles.titleSmallTeal50,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword.value = !controller.isShowPassword.value;
          },
          child: Container(
            margin: EdgeInsets.only(
              left: 30.h,
              top: 29.v,
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
          maxHeight: 64.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword1() {
    return Obx(
      () => CustomTextFormField(
        controller: controller.passwordController1,
        hintText: "lbl_password".tr,
        hintStyle: CustomTextStyles.titleSmallTeal50,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
          onTap: () {
            controller.isShowPassword1.value =
                !controller.isShowPassword1.value;
          },
          child: Container(
            margin: EdgeInsets.only(
              left: 30.h,
              top: 30.v,
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
          maxHeight: 65.v,
        ),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword1.value,
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister() {
    return CustomElevatedButton(
      text: "lbl_register".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 51.v,
      ),
    );
  }
}
