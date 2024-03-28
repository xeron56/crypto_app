import '../models/exchangeone_item_model.dart';
import '../controller/exchange_one_controller.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class ExchangeoneItemWidget extends StatelessWidget {
  ExchangeoneItemWidget(
    this.exchangeoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExchangeoneItemModel exchangeoneItemModelObj;

  var controller = Get.find<ExchangeOneController>();

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
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
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.outline1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder19,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.v),
            Obx(
              () => Text(
                exchangeoneItemModelObj.decTwo!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 5.v),
            Obx(
              () => Text(
                exchangeoneItemModelObj.bTCCounter!.value,
                style: CustomTextStyles.titleMediumWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
