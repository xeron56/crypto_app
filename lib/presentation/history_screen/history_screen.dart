import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/history_item_widget.dart';
import 'models/history_item_model.dart';
import 'widgets/history1_item_widget.dart';
import 'models/history1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/history_controller.dart';

// ignore_for_file: must_be_immutable
class HistoryScreen extends GetWidget<HistoryController> {
  const HistoryScreen({Key? key})
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
            padding: EdgeInsets.only(top: 10.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_spending_history".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 22.v),
                  _buildM(),
                  SizedBox(height: 34.v),
                  _buildFrameTwelve(),
                  SizedBox(height: 29.v),
                  _buildHistory(),
                  SizedBox(height: 38.v),
                  _buildHistory1(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_history".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTelevisionTeal5024x24,
          margin: EdgeInsets.fromLTRB(16.h, 14.v, 16.h, 17.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildM() {
    return Container(
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 163.v,
            width: 177.h,
            margin: EdgeInsets.only(
              top: 45.v,
              bottom: 35.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup46071,
                  height: 152.adaptSize,
                  width: 152.adaptSize,
                  alignment: Alignment.topRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse100Stroke,
                  height: 78.adaptSize,
                  width: 78.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(left: 13.h),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 7.v),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "lbl_air_tickets".tr,
                              style: CustomTextStyles.labelLargeTeal50_1,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_520_00".tr,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 6.v,
                            bottom: 4.v,
                          ),
                          padding: EdgeInsets.all(4.h),
                          decoration: AppDecoration.gradientBlueGrayToOnPrimary
                              .copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder8,
                          ),
                          child: Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.teal50,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.black900.withOpacity(0.25),
                                  spreadRadius: 2.h,
                                  blurRadius: 2.h,
                                  offset: Offset(
                                    0,
                                    4,
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
          ),
          Container(
            height: 243.v,
            width: 129.h,
            margin: EdgeInsets.only(left: 17.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.h,
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
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_transactions".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 243.v,
                    width: 129.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 243.v,
                              child: VerticalDivider(
                                width: 1.h,
                                thickness: 1.v,
                                color: appTheme.blueGray700.withOpacity(0.53),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(top: 60.v),
                              child: SizedBox(
                                width: 129.h,
                                child: Divider(
                                  color: appTheme.blueGray700.withOpacity(0.53),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 129.h,
                              child: Divider(
                                color: appTheme.blueGray700.withOpacity(0.53),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 58.v),
                              child: SizedBox(
                                width: 129.h,
                                child: Divider(
                                  color: appTheme.blueGray700.withOpacity(0.53),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              top: 83.v,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
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
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_air_tickets".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              bottom: 82.v,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment(0, 0.94),
                                      end: Alignment(1.26, 0.14),
                                      colors: [
                                        appTheme.cyan30001,
                                        appTheme.greenA100,
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_taxi".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 21.h,
                              bottom: 20.v,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4.h,
                                    ),
                                    gradient: LinearGradient(
                                      begin: Alignment(0, 0.94),
                                      end: Alignment(1.26, 0.14),
                                      colors: [
                                        appTheme.pink300,
                                        appTheme.indigo100,
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_food".tr,
                                    style: theme.textTheme.bodySmall,
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwelve() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.3,
          child: Text(
            "lbl_date".tr,
            style: CustomTextStyles.labelLargeTeal50,
          ),
        ),
        SizedBox(height: 14.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 5.v,
              ),
              child: Text(
                "msg_february_march".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCalendar,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ],
        ),
        SizedBox(height: 10.v),
        Opacity(
          opacity: 0.2,
          child: Divider(
            color: appTheme.teal50.withOpacity(0.42),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHistory() {
    return Padding(
      padding: EdgeInsets.only(right: 41.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 35.v,
            crossAxisCount: 2,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 10.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.historyModelObj.value.historyItemList.value.length,
          itemBuilder: (context, index) {
            HistoryItemModel model =
                controller.historyModelObj.value.historyItemList.value[index];
            return HistoryItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHistory1() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.5.v),
            child: SizedBox(
              width: 343.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: appTheme.blueGray700,
              ),
            ),
          );
        },
        itemCount:
            controller.historyModelObj.value.history1ItemList.value.length,
        itemBuilder: (context, index) {
          History1ItemModel model =
              controller.historyModelObj.value.history1ItemList.value[index];
          return History1ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
