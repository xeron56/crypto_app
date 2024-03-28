import 'package:crypto_app/widgets/app_bar/custom_app_bar.dart';
import 'package:crypto_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:crypto_app/widgets/app_bar/appbar_title.dart';
import 'package:crypto_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/scan_item_controller.dart';

// ignore_for_file: must_be_immutable
class ScanItemScreen extends GetWidget<ScanItemController> {
  const ScanItemScreen({Key? key})
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
            vertical: 58.v,
          ),
          child: Column(
            children: [
              Container(
                height: 266.adaptSize,
                width: 266.adaptSize,
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 19.h,
                  bottom: 85.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup30,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup46048,
                  height: 50.v,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              SizedBox(height: 61.v),
              Text(
                "lbl_cash_added".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 17.v),
              Container(
                width: 241.h,
                margin: EdgeInsets.symmetric(horizontal: 51.h),
                child: Text(
                  "msg_align_qr_code_within".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleSmallBluegray500,
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "lbl_scan_item".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTelevisionTeal50,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_scan_item".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCloseTeal50,
          margin: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
        ),
      ],
    );
  }
}
