import '../models/frame_item_model.dart';
import '../controller/main_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  var controller = Get.find<MainTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}
