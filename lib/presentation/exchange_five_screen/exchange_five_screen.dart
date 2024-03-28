import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'widgets/exchangefive_item_widget.dart';
import 'models/exchangefive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_five_controller.dart';

// ignore_for_file: must_be_immutable
class ExchangeFiveScreen extends GetWidget<ExchangeFiveController> {
  const ExchangeFiveScreen({Key? key})
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
            padding: EdgeInsets.only(top: 22.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_1_btc_21_october".tr,
                      style: CustomTextStyles.titleSmallBluegray200,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  height: 439.v,
                  width: 343.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "lbl_45_120_00".tr,
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                      _buildVectorTwentySix(),
                    ],
                  ),
                ),
                SizedBox(height: 24.v),
                _buildFrame(),
                SizedBox(height: 30.v),
                _buildExchangeFive(),
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
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_exchange".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorTwentySix() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 389.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector26,
              width: 293.h,
              alignment: Alignment.topRight,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector25,
              width: 292.h,
              alignment: Alignment.topRight,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 24.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_46_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_45_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_44_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_43_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_42_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Text(
                          "lbl_41_00".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_39_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_38_00".tr,
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        Text(
                          "lbl_37_00".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 7.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 324.v,
                            width: 293.h,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Opacity(
                                  opacity: 0.5,
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 90.v),
                                      child: SizedBox(
                                        width: 293.h,
                                        child: Divider(
                                          color:
                                              appTheme.teal50.withOpacity(0.53),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 71.h),
                                      child: SizedBox(
                                        height: 324.v,
                                        child: VerticalDivider(
                                          width: 1.h,
                                          thickness: 1.v,
                                          color:
                                              appTheme.teal50.withOpacity(0.53),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 38.v,
                                    width: 120.h,
                                    margin: EdgeInsets.only(
                                      left: 54.h,
                                      top: 71.v,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGroup46053,
                                          height: 38.v,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: 35.h,
                                              right: 17.h,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "lbl_43_510_usd".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeTeal50_1,
                                                  ),
                                                ),
                                                Text(
                                                  "lbl_21_oct_14_45".tr,
                                                  style: theme
                                                      .textTheme.labelMedium,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(right: 21.h),
                            child: Row(
                              children: [
                                Text(
                                  "lbl_14_002".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "lbl_15_002".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "lbl_16_00".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "lbl_17_00".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "lbl_18_00".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.h),
                                  child: Text(
                                    "lbl_19_00".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 43.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_1h".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          CustomElevatedButton(
            height: 25.v,
            width: 49.h,
            text: "lbl_1d".tr,
            margin: EdgeInsets.only(left: 21.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL10,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_1w".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(
            flex: 33,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_1m".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(
            flex: 33,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_6m".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(
            flex: 33,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_1y".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExchangeFive() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 20.v,
            );
          },
          itemCount: controller
              .exchangeFiveModelObj.value.exchangefiveItemList.value.length,
          itemBuilder: (context, index) {
            ExchangefiveItemModel model = controller
                .exchangeFiveModelObj.value.exchangefiveItemList.value[index];
            return ExchangefiveItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
