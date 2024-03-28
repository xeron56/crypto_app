import '../models/settings_item_model.dart';
import '../controller/settings_controller.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class SettingsItemWidget extends StatelessWidget {
  SettingsItemWidget(
    this.settingsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsItemModel settingsItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 169.v,
      width: 264.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  12.h,
                ),
                gradient: LinearGradient(
                  begin: Alignment(0, 0.94),
                  end: Alignment(1.26, 0.14),
                  colors: [
                    appTheme.amber300,
                    appTheme.deepOrange300,
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: OutlineGradientButton(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 1.v,
                  right: 1.h,
                  bottom: 1.v,
                ),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                  begin: Alignment(0, 0),
                  end: Alignment(0.92, 1.03),
                  colors: [
                    appTheme.lightBlueA1006b,
                    appTheme.indigoA10000,
                    theme.colorScheme.onError,
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
                    vertical: 18.v,
                  ),
                  decoration:
                      AppDecoration.gradientWhiteAFToGray100001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder19,
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
                              imagePath:
                                  settingsItemModelObj.tinkoffBank!.value,
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              radius: BorderRadius.circular(
                                16.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 4.v,
                              bottom: 10.v,
                            ),
                            child: Obx(
                              () => Text(
                                settingsItemModelObj.nordBank!.value,
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserYellow800,
                            height: 20.v,
                            margin: EdgeInsets.only(
                              top: 4.v,
                              bottom: 8.v,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 27.v),
                      Obx(
                        () => Text(
                          settingsItemModelObj.price!.value,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Obx(
                        () => Text(
                          settingsItemModelObj.cardNumber!.value,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
