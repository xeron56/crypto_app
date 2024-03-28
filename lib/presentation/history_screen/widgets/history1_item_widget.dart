import '../models/history1_item_model.dart';
import '../controller/history_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class History1ItemWidget extends StatelessWidget {
  History1ItemWidget(
    this.history1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  History1ItemModel history1ItemModelObj;

  var controller = Get.find<HistoryController>();

  @override
  Widget build(BuildContext context) {
    return Row(
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
              imagePath: history1ItemModelObj.barbaraDuck!.value,
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
                  history1ItemModelObj.title!.value,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 3.v),
              Obx(
                () => Text(
                  history1ItemModelObj.subtitle!.value,
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
              history1ItemModelObj.price!.value,
              style: CustomTextStyles.titleMediumPrimary,
            ),
          ),
        ),
      ],
    );
  }
}
