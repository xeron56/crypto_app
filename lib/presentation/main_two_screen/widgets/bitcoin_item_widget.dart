import '../models/bitcoin_item_model.dart';
import '../controller/main_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class BitcoinItemWidget extends StatelessWidget {
  BitcoinItemWidget(
    this.bitcoinItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BitcoinItemModel bitcoinItemModelObj;

  var controller = Get.find<MainTwoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.v,
      width: 154.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 195.v,
              width: 154.h,
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder19,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgVector24,
                height: 70.v,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
                right: 26.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: bitcoinItemModelObj.bitcoin!.value,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          radius: BorderRadius.circular(
                            14.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 3.v,
                          bottom: 4.v,
                        ),
                        child: Obx(
                          () => Text(
                            bitcoinItemModelObj.title!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 27.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          bitcoinItemModelObj.title1!.value,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 14.v),
                        child: Obx(
                          () => Text(
                            bitcoinItemModelObj.unityGaming!.value,
                            style: CustomTextStyles.titleMediumBluegray500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
