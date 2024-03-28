import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/settingsone_item_widget.dart';
import 'models/settingsone_item_model.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/settings_one_controller.dart';

// ignore_for_file: must_be_immutable
class SettingsOneScreen extends GetWidget<SettingsOneController> {
  const SettingsOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 715.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildOval(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 33.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup5,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_add_a_card".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 31.v),
                      _buildSettingsOne(),
                      SizedBox(height: 29.v),
                      CustomElevatedButton(
                        text: "lbl_next".tr,
                      ),
                      SizedBox(height: 76.v),
                    ],
                  ),
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
  Widget _buildOval() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          top: 7.v,
          right: 16.h,
        ),
        child: OutlineGradientButton(
          padding: EdgeInsets.only(
            left: 1.h,
            top: 1.v,
            right: 1.h,
            bottom: 1.v,
          ),
          strokeWidth: 1.h,
          gradient: LinearGradient(
            begin: Alignment(0, 0),
            end: Alignment(0.92, 1.03),
            colors: [
              appTheme.lightBlueA1006b,
              appTheme.indigoA10000,
              theme.colorScheme.onError,
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
              vertical: 17.v,
            ),
            decoration: AppDecoration.gradientTealToErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgOval1,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      radius: BorderRadius.circular(
                        16.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 7.v,
                        bottom: 7.v,
                      ),
                      child: Text(
                        "lbl_tinkoff_bank".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserYellow800,
                      height: 20.v,
                      margin: EdgeInsets.only(bottom: 12.v),
                    ),
                  ],
                ),
                SizedBox(height: 53.v),
                Text(
                  "lbl_146_450_00".tr,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 35.v),
                Text(
                  "lbl_1546".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsOne() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 23.v,
          );
        },
        itemCount: controller
            .settingsOneModelObj.value.settingsoneItemList.value.length,
        itemBuilder: (context, index) {
          SettingsoneItemModel model = controller
              .settingsOneModelObj.value.settingsoneItemList.value[index];
          return SettingsoneItemWidget(
            model,
          );
        },
      ),
    );
  }
}
