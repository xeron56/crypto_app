import '../models/settingstwo_item_model.dart';
import '../controller/settings_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class SettingstwoItemWidget extends StatelessWidget {
  SettingstwoItemWidget(
    this.settingstwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingstwoItemModel settingstwoItemModelObj;

  var controller = Get.find<SettingsTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.h),
      decoration: AppDecoration.outlineBluegray9005.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder37,
      ),
      child: Container(
        height: 58.adaptSize,
        width: 58.adaptSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            29.h,
          ),
          border: Border.all(
            color: appTheme.blueGray900,
            width: 1.h,
          ),
          gradient: LinearGradient(
            begin: Alignment(0.12, 0.76),
            end: Alignment(1.03, 0.43),
            colors: [
              appTheme.deepPurpleA100,
              appTheme.cyanA400,
            ],
          ),
        ),
      ),
    );
  }
}
