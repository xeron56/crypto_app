import '../models/main_item_model.dart';
import '../controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class MainItemWidget extends StatelessWidget {
  MainItemWidget(
    this.mainItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MainItemModel mainItemModelObj;

  var controller = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 11.v),
            decoration: AppDecoration.fillPurple.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder19,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: mainItemModelObj.barbaraDuck!.value,
                height: 40.adaptSize,
                width: 40.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              bottom: 11.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    mainItemModelObj.title!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    mainItemModelObj.subtitle!.value,
                    style: CustomTextStyles.titleSmallBluegray500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 22.v,
            ),
            child: Obx(
              () => Text(
                mainItemModelObj.price!.value,
                style: CustomTextStyles.titleMediumPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
