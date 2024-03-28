import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'widgets/mainthree_item_widget.dart';
import 'models/mainthree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/main_three_controller.dart';

// ignore_for_file: must_be_immutable
class MainThreeScreen extends GetWidget<MainThreeController> {
  const MainThreeScreen({Key? key})
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 42.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_transactions".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 34.v),
              _buildMainThree(),
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
        text: "lbl_main".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCloseTeal50,
          margin: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMainThree() {
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
            controller.mainThreeModelObj.value.mainthreeItemList.value.length,
        itemBuilder: (context, index) {
          MainthreeItemModel model =
              controller.mainThreeModelObj.value.mainthreeItemList.value[index];
          return MainthreeItemWidget(
            model,
          );
        },
      ),
    );
  }
}
