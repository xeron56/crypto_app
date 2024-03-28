import '../models/octobertoday_item_model.dart';
import '../controller/history_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class OctobertodayItemWidget extends StatelessWidget {
  OctobertodayItemWidget(
    this.octobertodayItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OctobertodayItemModel octobertodayItemModelObj;

  var controller = Get.find<HistoryOneController>();

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
          child: CustomImageView(
            imagePath: ImageConstant.imgMemoji142,
            height: 40.adaptSize,
            width: 40.adaptSize,
            alignment: Alignment.center,
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
              Text(
                "lbl_barbara_duck".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_visa_1546".tr,
                style: CustomTextStyles.titleSmallBluegray500,
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
          child: Text(
            "lbl_280_00".tr,
            style: CustomTextStyles.titleMediumPrimary,
          ),
        ),
      ],
    );
  }
}
