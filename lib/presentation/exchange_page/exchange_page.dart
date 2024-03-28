import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_controller.dart';
import 'models/exchange_model.dart';

class ExchangePage extends StatelessWidget {
  ExchangePage({Key? key})
      : super(
          key: key,
        );

  ExchangeController controller =
      Get.put(ExchangeController(ExchangeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 33.v),
                Column(
                  children: [
                    _buildPrice(),
                    SizedBox(height: 24.v),
                    _buildTwentyEight(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 211.v,
            width: 342.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 250.h,
                      right: 10.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_34_000_00".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_25_000_00".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          padding: EdgeInsets.all(6.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Text(
                            "lbl_20_560_00".tr,
                            style: CustomTextStyles.labelLargeTeal50_1,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_34_000_00".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_34_000_00".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "lbl_34_000_00".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.h,
                      vertical: 32.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup29,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 22.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup46022,
                          height: 124.v,
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.23,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup46028,
                    height: 32.v,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Row(
              children: [
                Text(
                  "lbl_12_00".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_13_00".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "lbl_14_002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "lbl_15_002".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_16_00".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "lbl_17_00".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyEight() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 19.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 43.v,
                  child: VerticalDivider(
                    width: 5.h,
                    thickness: 5.v,
                    color: appTheme.pink300,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    bottom: 6.v,
                  ),
                  child: _buildFrameSixtyNine(
                    unityGaming: "lbl_btc_usd".tr,
                    decTwo: "msg_limit_sell_10_24".tr,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.v),
                  child: Column(
                    children: [
                      Text(
                        "lbl_0_0035100_btc".tr,
                        style: CustomTextStyles.titleMediumWhiteA700,
                      ),
                      SizedBox(height: 3.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "lbl_1_525_00".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 186.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 103.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 19.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 43.v,
                          child: VerticalDivider(
                            width: 5.h,
                            thickness: 5.v,
                            color: appTheme.pink300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 6.v,
                          ),
                          child: _buildFrameSixtyNine(
                            unityGaming: "lbl_btc_usd".tr,
                            decTwo: "msg_limit_sell_14_50".tr,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.v),
                          child: Column(
                            children: [
                              Text(
                                "lbl_0_0155100_btc".tr,
                                style: CustomTextStyles.titleMediumWhiteA700,
                              ),
                              SizedBox(height: 3.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_3_525_00".tr,
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
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 103.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 19.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 43.v,
                          child: VerticalDivider(
                            width: 5.h,
                            thickness: 5.v,
                            color: appTheme.cyan300,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            bottom: 5.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_btc_usd".tr,
                                style: CustomTextStyles.titleMediumWhiteA700,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "msg_limit_buy_10_31".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(bottom: 6.v),
                          child: Column(
                            children: [
                              Text(
                                "lbl_0_016174_btc".tr,
                                style: CustomTextStyles.titleMediumWhiteA700,
                              ),
                              SizedBox(height: 3.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_3_525_00".tr,
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 63.v,
                      bottom: 40.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 19.h,
                      vertical: 18.v,
                    ),
                    decoration: AppDecoration.blur.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder19,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "lbl_0_346".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.h),
                                  child: Text(
                                    "lbl_btc".tr,
                                    style:
                                        CustomTextStyles.titleMediumBluegray500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.v),
                            SizedBox(
                              width: 105.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "lbl_1_293_88".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  Text(
                                    "lbl_usd".tr,
                                    style:
                                        CustomTextStyles.titleMediumBluegray500,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        CustomElevatedButton(
                          height: 44.v,
                          width: 79.h,
                          text: "lbl_buy".tr,
                          margin: EdgeInsets.only(left: 30.h),
                          buttonStyle: CustomButtonStyles.fillCyan,
                        ),
                        CustomElevatedButton(
                          height: 44.v,
                          width: 79.h,
                          text: "lbl_sell".tr,
                          margin: EdgeInsets.only(left: 10.h),
                          buttonStyle: CustomButtonStyles.fillPink,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 53.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameSixtyNine({
    required String unityGaming,
    required String decTwo,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          unityGaming,
          style: CustomTextStyles.titleMediumWhiteA700.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          decTwo,
          style: theme.textTheme.labelLarge!.copyWith(
            color: appTheme.blueGray500,
          ),
        ),
      ],
    );
  }
}
