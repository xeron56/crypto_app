import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:crypto_app/widgets/custom_search_view.dart';
import 'widgets/mainfour_item_widget.dart';
import 'models/mainfour_item_model.dart';
import 'package:crypto_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/main_four_controller.dart';

// ignore_for_file: must_be_immutable
class MainFourScreen extends GetWidget<MainFourController> {
  const MainFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              _buildLightNavigation(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_templates".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildMainFour(),
                    SizedBox(height: 39.v),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_payments".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 9.v,
                              bottom: 13.v,
                            ),
                            child: Text(
                              "lbl_mobile_phone".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgHomeTeal50,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 10.v,
                              bottom: 12.v,
                            ),
                            child: Text(
                              "msg_ommunal_payment".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUserTeal5040x40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 9.v,
                              bottom: 13.v,
                            ),
                            child: Text(
                              "msg_transfer_to_wallets".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            padding: EdgeInsets.all(11.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFavorite,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 9.v,
                              bottom: 13.v,
                            ),
                            child: Text(
                              "lbl_barbara".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLightNavigation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomAppBar(
            height: 30.v,
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.only(
                left: 16.h,
                bottom: 5.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_payments".tr,
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgTelevisionTeal50,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 16.h,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
          CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainFour() {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 69.v,
            crossAxisCount: 2,
            mainAxisSpacing: 20.h,
            crossAxisSpacing: 20.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.mainFourModelObj.value.mainfourItemList.value.length,
          itemBuilder: (context, index) {
            MainfourItemModel model =
                controller.mainFourModelObj.value.mainfourItemList.value[index];
            return MainfourItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
