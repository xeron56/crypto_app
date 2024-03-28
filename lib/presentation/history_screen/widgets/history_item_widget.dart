import '../models/history_item_model.dart';
import '../controller/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(
    this.historyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HistoryItemModel historyItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.gradientAmberToDeepOrange.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        children: [
          Opacity(
            opacity: 0.5,
            child: Obx(
              () => Text(
                historyItemModelObj.phone!.value,
                style: CustomTextStyles.bodySmallGray900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Obx(
              () => Text(
                historyItemModelObj.price!.value,
                style: CustomTextStyles.labelLargeGray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
