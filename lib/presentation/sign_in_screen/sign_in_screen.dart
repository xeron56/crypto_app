import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/signin_item_widget.dart';
import 'models/signin_item_model.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/sign_in_controller.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({Key? key})
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
            horizontal: 60.h,
            vertical: 40.v,
          ),
          child: Column(
            children: [
              Text(
                "lbl_enter_pin".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 6.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "msg_enter_your_pin_code".tr,
                  style: CustomTextStyles.titleSmallTeal50,
                ),
              ),
              SizedBox(height: 67.v),
              CustomImageView(
                imagePath: ImageConstant.imgUserTeal50,
                height: 12.v,
              ),
              SizedBox(height: 68.v),
              _buildSignIn(),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(right: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.h),
                        child: CustomIconButton(
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          padding: EdgeInsets.all(13.h),
                          decoration: IconButtonStyleHelper.outlineTeal,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcons8,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 9.v,
                        ),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder29,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            Text(
                              "lbl_0".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: CustomIconButton(
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          padding: EdgeInsets.all(13.h),
                          decoration: IconButtonStyleHelper.outlineTeal,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgIcons8TouchId,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 68.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "msg_enter_your_pin_code".tr,
                  style: CustomTextStyles.titleSmallTeal50,
                ),
              ),
              SizedBox(height: 7.v),
            ],
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
        text: "lbl_sign_in".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignIn() {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 59.v,
            crossAxisCount: 3,
            mainAxisSpacing: 40.h,
            crossAxisSpacing: 40.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.signInModelObj.value.signinItemList.value.length,
          itemBuilder: (context, index) {
            SigninItemModel model =
                controller.signInModelObj.value.signinItemList.value[index];
            return SigninItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
