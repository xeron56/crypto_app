import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'widgets/bitcoin_item_widget.dart';
import 'models/bitcoin_item_model.dart';
import 'widgets/barbaraduck_item_widget.dart';
import 'models/barbaraduck_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/main_two_controller.dart';

// ignore_for_file: must_be_immutable
class MainTwoScreen extends GetWidget<MainTwoController> {
  const MainTwoScreen({Key? key})
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
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_balance".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_18_000_00".tr,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildEightyOne(),
                SizedBox(height: 31.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "lbl_activity".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
                _buildBitcoin(),
                SizedBox(height: 26.v),
                _buildTransactions(),
                SizedBox(height: 25.v),
                _buildBarbaraDuck(),
                SizedBox(height: 10.v),
                Divider(
                  indent: 16.h,
                  endIndent: 16.h,
                ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildList(
                    title: "lbl_alan_denver".tr,
                    subtitle: "msg_mastercard_7682".tr,
                    price: "lbl_280_00".tr,
                  ),
                ),
                SizedBox(height: 18.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: _buildList(
                    title: "lbl_alan_denver".tr,
                    subtitle: "msg_mastercard_7682".tr,
                    price: "lbl_280_00".tr,
                  ),
                ),
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
  Widget _buildEightyOne() {
    return SizedBox(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
            child: Padding(
              padding: EdgeInsets.only(left: 323.h),
              child: Obx(
                () => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 1.v,
                    );
                  },
                  itemCount: controller
                      .mainTwoModelObj.value.frameItemList.value.length,
                  itemBuilder: (context, index) {
                    FrameItemModel model = controller
                        .mainTwoModelObj.value.frameItemList.value[index];
                    return FrameItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBitcoin() {
    return SizedBox(
      height: 195.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount:
              controller.mainTwoModelObj.value.bitcoinItemList.value.length,
          itemBuilder: (context, index) {
            BitcoinItemModel model =
                controller.mainTwoModelObj.value.bitcoinItemList.value[index];
            return BitcoinItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactions() {
    return Padding(
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
    );
  }

  /// Section Widget
  Widget _buildBarbaraDuck() {
    return Padding(
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
              controller.mainTwoModelObj.value.barbaraduckItemList.value.length,
          itemBuilder: (context, index) {
            BarbaraduckItemModel model = controller
                .mainTwoModelObj.value.barbaraduckItemList.value[index];
            return BarbaraduckItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildList({
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(top: 1.v),
                  decoration: AppDecoration.fillPurple.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMemoji142,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.titleMedium!.copyWith(
                          color: appTheme.teal50,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        subtitle,
                        style: CustomTextStyles.titleSmallBluegray500.copyWith(
                          color: appTheme.blueGray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.v,
                bottom: 12.v,
              ),
              child: Text(
                price,
                textAlign: TextAlign.right,
                style: CustomTextStyles.titleMediumPrimary.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10.v),
        Divider(),
      ],
    );
  }
}
