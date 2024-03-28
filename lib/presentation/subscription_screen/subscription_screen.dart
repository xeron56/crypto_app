import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_image.dart';
import 'widgets/subscription_item_widget.dart';
import 'models/subscription_item_model.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/subscription_controller.dart';

// ignore_for_file: must_be_immutable
class SubscriptionScreen extends GetWidget<SubscriptionController> {
  const SubscriptionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconlyLightTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "msg_all_features_in".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconlyLightTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "msg_150_premium_card".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconlyLightTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "msg_unlimited_exchange".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconlyLightTick,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 4.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "msg_20_tb_cloud_storage".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL40,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "lbl_choose_plan".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildSubscription(),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                        text: "lbl_get_free".tr,
                      ),
                      SizedBox(height: 53.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_subscription".tr,
      ),
      actions: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.fillPinkA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder19,
          ),
          child: AppbarImage(
            imagePath: ImageConstant.imgMemoji071,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSubscription() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: controller
            .subscriptionModelObj.value.subscriptionItemList.value.length,
        itemBuilder: (context, index) {
          SubscriptionItemModel model = controller
              .subscriptionModelObj.value.subscriptionItemList.value[index];
          return SubscriptionItemWidget(
            model,
          );
        },
      ),
    );
  }
}
