import 'package:crypto_app/widgets/custom_outlined_button.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_six_controller.dart';
import 'models/exchange_six_model.dart';

class ExchangeSixPage extends StatelessWidget {
  ExchangeSixPage({Key? key})
      : super(
          key: key,
        );

  ExchangeSixController controller =
      Get.put(ExchangeSixController(ExchangeSixModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 55.v),
              _buildUSD(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUSD() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_0_0978_btc".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 22.v),
          SizedBox(
            height: 143.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildFrameTen(
                  subtitle: "lbl_0_0425_btc".tr,
                ),
                _buildFrameTen(
                  subtitle: "lbl_1_314_20_usd".tr,
                ),
                CustomOutlinedButton(
                  width: 96.h,
                  text: "lbl_usd".tr,
                  margin: EdgeInsets.only(top: 49.v),
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShare,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlueGrayTL16,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
          SizedBox(height: 49.v),
          CustomElevatedButton(
            text: "lbl_exchange".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameTen({required String subtitle}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          style: CustomTextStyles.displayMediumCyan300.copyWith(
            color: appTheme.cyan300,
          ),
        ),
        SizedBox(height: 4.v),
        Opacity(
          opacity: 0.2,
          child: Divider(
            color: appTheme.teal50.withOpacity(0.42),
          ),
        ),
      ],
    );
  }
}
