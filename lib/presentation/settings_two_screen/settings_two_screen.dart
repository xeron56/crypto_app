import 'widgets/settingstwo_item_widget.dart';
import 'models/settingstwo_item_model.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/settings_two_controller.dart';

// ignore_for_file: must_be_immutable
class SettingsTwoScreen extends GetWidget<SettingsTwoController> {
  const SettingsTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 53.v),
          child: Column(
            children: [
              SizedBox(height: 65.v),
              _buildBase(),
              SizedBox(height: 12.v),
              _buildSeven(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBase() {
    return SizedBox(
      height: 247.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse7554x47,
            width: 47.h,
            alignment: Alignment.bottomRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse7470x61,
            width: 61.h,
            alignment: Alignment.topLeft,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 206.v,
              width: 343.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBase,
                    height: 206.v,
                    radius: BorderRadius.circular(
                      20.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgOval1,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                radius: BorderRadius.circular(
                                  16.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 10.h,
                                  top: 4.v,
                                  bottom: 10.v,
                                ),
                                child: Text(
                                  "lbl_tinkoff_bank".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgUserYellow800,
                                height: 20.v,
                                margin: EdgeInsets.only(bottom: 10.v),
                              ),
                            ],
                          ),
                          SizedBox(height: 56.v),
                          Container(
                            decoration: AppDecoration.outlineBlack900,
                            child: Text(
                              "lbl_146_450_00".tr,
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          SizedBox(height: 38.v),
                          Container(
                            decoration: AppDecoration.outlineBlack900,
                            child: Text(
                              "lbl_2122".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_color".tr,
            style: CustomTextStyles.titleMediumPoppins,
          ),
          SizedBox(height: 19.v),
          Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 73.v,
                crossAxisCount: 4,
                mainAxisSpacing: 18.h,
                crossAxisSpacing: 18.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller
                  .settingsTwoModelObj.value.settingstwoItemList.value.length,
              itemBuilder: (context, index) {
                SettingstwoItemModel model = controller
                    .settingsTwoModelObj.value.settingstwoItemList.value[index];
                return SettingstwoItemWidget(
                  model,
                );
              },
            ),
          ),
          SizedBox(height: 37.v),
          CustomElevatedButton(
            text: "lbl_save".tr,
          ),
          SizedBox(height: 43.v),
        ],
      ),
    );
  }
}
