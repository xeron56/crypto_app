import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:grouped_list/grouped_list.dart';
import 'models/octobertoday2_item_model.dart';
import '../history_two_screen/widgets/octobertoday2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/history_two_controller.dart';

// ignore_for_file: must_be_immutable
class HistoryTwoScreen extends GetWidget<HistoryTwoController> {
  const HistoryTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              _buildFrameTwelve(),
              SizedBox(height: 29.v),
              _buildOctoberToday(),
              SizedBox(height: 5.v),
            ],
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
  Widget _buildOctoberToday() {
    return Obx(
      () => GroupedListView<Octobertoday2ItemModel, String>(
        shrinkWrap: true,
        stickyHeaderBackgroundColor: Colors.transparent,
        elements:
            controller.historyTwoModelObj.value.octobertoday2ItemList.value,
        groupBy: (element) => element.groupBy!.value,
        sort: false,
        groupSeparatorBuilder: (String value) {
          return Padding(
            padding: EdgeInsets.only(
              top: 26.v,
              bottom: 28.v,
            ),
            child: Column(
              children: [
                Text(
                  value,
                  style: CustomTextStyles.titleMediumPoppins.copyWith(
                    color: appTheme.teal50,
                  ),
                ),
              ],
            ),
          );
        },
        itemBuilder: (context, model) {
          return Octobertoday2ItemWidget(
            model,
          );
        },
        separator: SizedBox(
          height: 17.v,
        ),
      ),
    );
  }
}
