import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:crypto_app/presentation/exchange_six_page/exchange_six_page.dart';
import 'package:crypto_app/presentation/exchange_two_page/exchange_two_page.dart';
import 'package:crypto_app/presentation/exchange_three_page/exchange_three_page.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_tab_container_controller.dart';

// ignore_for_file: must_be_immutable
class ExchangeTabContainerScreen
    extends GetWidget<ExchangeTabContainerController> {
  const ExchangeTabContainerScreen({Key? key})
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
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25.v,
                  width: 218.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.teal50,
                    labelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelColor: appTheme.blueGray500,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                    indicator: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl_main".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_market".tr,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_portfolio".tr,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 675.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      ExchangeSixPage(),
                      ExchangeTwoPage(),
                      ExchangeThreePage(),
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
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_exchange".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 18.v),
        ),
      ],
    );
  }
}
