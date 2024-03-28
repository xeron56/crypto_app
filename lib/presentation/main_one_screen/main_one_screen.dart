import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/mainone_item_widget.dart';
import 'models/mainone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/main_one_controller.dart';

// ignore_for_file: must_be_immutable
class MainOneScreen extends GetWidget<MainOneController> {
  const MainOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 43.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 65.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_cards".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                      Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(
                          top: 20.v,
                          bottom: 18.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            5.h,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment(0.12, 0.76),
                            end: Alignment(1.03, 0.43),
                            colors: [
                              appTheme.deepPurpleA100,
                              appTheme.cyanA400,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                _buildOval(),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_transactions".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 25.v),
                _buildMainOne(),
              ],
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
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_main".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOval() {
    return SizedBox(
      height: 255.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse75,
            width: 48.h,
            alignment: Alignment.bottomRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse74,
            width: 61.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
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
                  decoration: AppDecoration.gradientWhiteAFToGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                              top: 4.v,
                              bottom: 10.v,
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
                            margin: EdgeInsets.only(bottom: 10.v),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainOne() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.5.v),
                child: SizedBox(
                  width: 343.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.blueGray700,
                  ),
                ),
              );
            },
            itemCount:
                controller.mainOneModelObj.value.mainoneItemList.value.length,
            itemBuilder: (context, index) {
              MainoneItemModel model =
                  controller.mainOneModelObj.value.mainoneItemList.value[index];
              return MainoneItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
