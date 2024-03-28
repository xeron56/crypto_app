import '../models/exchangefive_item_model.dart';
import '../controller/exchange_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class ExchangefiveItemWidget extends StatelessWidget {
  ExchangefiveItemWidget(
    this.exchangefiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExchangefiveItemModel exchangefiveItemModelObj;

  var controller = Get.find<ExchangeFiveController>();

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
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    exchangefiveItemModelObj.unityGaming!.value,
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    exchangefiveItemModelObj.decTwo!.value,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              children: [
                Obx(
                  () => Text(
                    exchangefiveItemModelObj.bTCCounter!.value,
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Obx(
                    () => Text(
                      exchangefiveItemModelObj.price!.value,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
