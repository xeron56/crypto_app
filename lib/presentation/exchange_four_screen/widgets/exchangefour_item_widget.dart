import '../models/exchangefour_item_model.dart';
import '../controller/exchange_four_controller.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class ExchangefourItemWidget extends StatelessWidget {
  ExchangefourItemWidget(
    this.exchangefourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExchangefourItemModel exchangefourItemModelObj;

  var controller = Get.find<ExchangeFourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 43.adaptSize,
            width: 43.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
            decoration: AppDecoration.fillPink.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: exchangefourItemModelObj.btc!.value,
                height: 43.adaptSize,
                width: 43.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    exchangefourItemModelObj.unityGaming!.value,
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    exchangefourItemModelObj.decTwo!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          _buildFollowing(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowing() {
    return CustomElevatedButton(
      height: 44.v,
      width: 108.h,
      text: "lbl_following".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL10,
      buttonTextStyle: CustomTextStyles.titleSmallBold,
    );
  }
}
