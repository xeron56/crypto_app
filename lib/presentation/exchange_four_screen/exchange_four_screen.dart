import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:crypto_app/widgets/custom_search_view.dart';
import 'widgets/exchangefour_item_widget.dart';
import 'models/exchangefour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_four_controller.dart';

// ignore_for_file: must_be_immutable
class ExchangeFourScreen extends GetWidget<ExchangeFourController> {
  const ExchangeFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              _buildLightNavigation(),
              SizedBox(height: 30.v),
              _buildExchangeFour(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLightNavigation() {
    return Column(
      children: [
        CustomAppBar(
          height: 30.v,
          leadingWidth: 40.h,
          leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 2.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_search".tr,
          ),
          actions: [
            AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgCloseTeal50,
              margin: EdgeInsets.fromLTRB(16.h, 3.v, 16.h, 2.v),
            ),
          ],
        ),
        SizedBox(height: 24.v),
        CustomSearchView(
          controller: controller.searchController,
          hintText: "lbl_search".tr,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExchangeFour() {
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
            .exchangeFourModelObj.value.exchangefourItemList.value.length,
        itemBuilder: (context, index) {
          ExchangefourItemModel model = controller
              .exchangeFourModelObj.value.exchangefourItemList.value[index];
          return ExchangefourItemWidget(
            model,
          );
        },
      ),
    );
  }
}
