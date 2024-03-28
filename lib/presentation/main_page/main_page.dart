import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'widgets/main_item_widget.dart';
import 'models/main_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/main_controller.dart';
import 'models/main_model.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key})
      : super(
          key: key,
        );

  MainController controller = Get.put(MainController(MainModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_balance".tr,
                    style: CustomTextStyles.titleSmallBluegray200,
                  ),
                ),
                SizedBox(height: 10.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_18_000_00".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildView(),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_stock".tr,
                    style: CustomTextStyles.titleSmallBluegray200,
                  ),
                ),
                SizedBox(height: 19.v),
                _buildUSD(),
                SizedBox(height: 40.v),
                _buildExchange(),
                SizedBox(height: 27.v),
                _buildTransactions(),
                SizedBox(height: 25.v),
                _buildMain(),
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
  Widget _buildView() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: SizedBox(
          height: 81.v,
          width: 359.h,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 81.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
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
                                  appTheme.amber300,
                                  appTheme.deepOrange300,
                                ],
                              ),
                              corners: Corners(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              child: Container(
                                height: 81.v,
                                width: 306.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray900,
                                  borderRadius: BorderRadius.circular(
                                    20.h,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.orange3003f,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 355.h,
                              margin: EdgeInsets.only(
                                left: 20.h,
                                top: 19.v,
                                bottom: 19.v,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgOval,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    margin: EdgeInsets.symmetric(vertical: 4.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "lbl_tinkoff_bank".tr,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                        SizedBox(height: 7.v),
                                        Text(
                                          "msg_mastercard_1546".tr,
                                          style: CustomTextStyles
                                              .titleSmallBluegray500,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgOval32x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    margin: EdgeInsets.symmetric(vertical: 4.v),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 89.h),
                              child: Text(
                                "lbl_5_870_00".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 134.h,
                        top: 31.v,
                        bottom: 31.v,
                      ),
                      child: Text(
                        "lbl_rub_54_00".tr,
                        textAlign: TextAlign.right,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 81.v,
                  width: 36.h,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray900,
                    borderRadius: BorderRadius.circular(
                      18.h,
                    ),
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
  Widget _buildUSD() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 124.h,
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    child: Text(
                      "lbl_btc".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIcons28pxTrending,
                    width: 27.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.v),
                    child: Text(
                      "lbl_1_03".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildFour(
                uSD: "lbl_eth".tr,
                oneHundredFiftySix: "lbl_1_03".tr,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildFour(
                uSD: "lbl_xrp".tr,
                oneHundredFiftySix: "lbl_1_03".tr,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExchange() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: CustomElevatedButton(
                text: "lbl_exchange".tr,
                margin: EdgeInsets.only(right: 11.h),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle:
                    CustomTextStyles.titleMediumSFProDisplayWhiteA700,
              ),
            ),
            Expanded(
              child: CustomElevatedButton(
                text: "lbl_pay".tr,
                margin: EdgeInsets.only(left: 11.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                buttonTextStyle:
                    CustomTextStyles.titleMediumSFProDisplayWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactions() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_transactions".tr,
              style: theme.textTheme.titleLarge,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 7.v,
              ),
              child: Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.titleSmallPrimary,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary,
              width: 8.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 6.v,
                bottom: 3.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMain() {
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
            itemCount: controller.mainModelObj.value.mainItemList.value.length,
            itemBuilder: (context, index) {
              MainItemModel model =
                  controller.mainModelObj.value.mainItemList.value[index];
              return MainItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFour({
    required String uSD,
    required String oneHundredFiftySix,
  }) {
    return Container(
      width: 123.h,
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Text(
              uSD,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.teal50,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            width: 27.h,
            margin: EdgeInsets.only(left: 1.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              oneHundredFiftySix,
              style: theme.textTheme.titleSmall!.copyWith(
                color: appTheme.teal50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
