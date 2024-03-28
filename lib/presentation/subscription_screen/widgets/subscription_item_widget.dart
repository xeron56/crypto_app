import '../models/subscription_item_model.dart';
import '../controller/subscription_controller.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class SubscriptionItemWidget extends StatelessWidget {
  SubscriptionItemWidget(
    this.subscriptionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SubscriptionItemModel subscriptionItemModelObj;

  var controller = Get.find<SubscriptionController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 7.v),
            child: CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.fillTeal,
              child: CustomImageView(
                imagePath: ImageConstant.imgHome,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    subscriptionItemModelObj.basic!.value,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    subscriptionItemModelObj.price!.value,
                    style: theme.textTheme.titleSmall,
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
