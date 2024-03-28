import '../models/mainfour_item_model.dart';
import '../controller/main_four_controller.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class MainfourItemWidget extends StatelessWidget {
  MainfourItemWidget(
    this.mainfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainfourItemModel mainfourItemModelObj;

  var controller = Get.find<MainFourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        gradient: LinearGradient(
          begin: Alignment(0.12, 0.76),
          end: Alignment(1.03, 0.43),
          colors: [
            appTheme.deepPurpleA100,
            appTheme.cyanA400,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(9.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7.v),
                child: Obx(
                  () => CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration:
                        IconButtonStyleHelper.gradientDeepPurpleAToCyanA,
                    child: CustomImageView(
                      imagePath: mainfourItemModelObj.close!.value,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  bottom: 4.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        mainfourItemModelObj.phone!.value,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Obx(
                      () => Text(
                        mainfourItemModelObj.createtemplate!.value,
                        style: CustomTextStyles.titleSmallBluegray200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
