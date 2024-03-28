import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'widgets/exchangethree_item_widget.dart';
import 'models/exchangethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_three_controller.dart';
import 'models/exchange_three_model.dart';

class ExchangeThreePage extends StatelessWidget {
  ExchangeThreePage({Key? key})
      : super(
          key: key,
        );

  ExchangeThreeController controller =
      Get.put(ExchangeThreeController(ExchangeThreeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 33.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_balance".tr,
                        style: CustomTextStyles.titleSmallBluegray200,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_18_000_00".tr,
                        style: theme.textTheme.displayMedium,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildD(),
                    SizedBox(height: 30.v),
                    _buildTwelve(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildD() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.outlineBluegray500.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 14.v,
                      bottom: 24.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_500".tr,
                          style: CustomTextStyles.labelLargeBluegray200,
                        ),
                        SizedBox(height: 40.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_400".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        SizedBox(height: 40.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "lbl_300".tr,
                            style: CustomTextStyles.labelLargeBluegray200,
                          ),
                        ),
                        SizedBox(height: 40.v),
                        Text(
                          "lbl_200".tr,
                          style: CustomTextStyles.labelLargeBluegray200,
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: SizedBox(
                        height: 219.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.blueGray700.withOpacity(0.53),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 22.v,
                      bottom: 31.v,
                    ),
                    child: Column(
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Divider(
                            color: appTheme.blueGray700.withOpacity(0.53),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        SizedBox(
                          height: 136.v,
                          width: 278.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 38.v),
                                    child: SizedBox(
                                      width: 278.h,
                                      child: Divider(
                                        color: appTheme.blueGray700
                                            .withOpacity(0.53),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.5,
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 42.v),
                                    child: SizedBox(
                                      width: 278.h,
                                      child: Divider(
                                        color: appTheme.blueGray700
                                            .withOpacity(0.53),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        ImageConstant.imgGroup13,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 12.v),
                                      Container(
                                        height: 124.v,
                                        width: 277.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 42.h,
                                          vertical: 17.v,
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              ImageConstant.imgGroup13,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup46053,
                                              height: 38.v,
                                              alignment: Alignment.bottomRight,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 108.h,
                                                  right: 22.h,
                                                  bottom: 5.v,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "lbl_145_6".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeTeal50_1,
                                                    ),
                                                    Text(
                                                      "lbl_14_oct_12_04".tr,
                                                      style: theme.textTheme
                                                          .labelMedium,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Opacity(
                          opacity: 0.5,
                          child: Divider(
                            color: appTheme.blueGray700.withOpacity(0.53),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: Divider(
                color: appTheme.blueGray700.withOpacity(0.53),
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(
                left: 65.h,
                right: 20.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_1h".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 21.v,
                    width: 27.h,
                    text: "lbl_1d".tr.toUpperCase(),
                    margin: EdgeInsets.only(left: 22.h),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                    buttonTextStyle:
                        CustomTextStyles.labelMediumSFProDisplayTeal50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_1w2".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_1m2".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_3m".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_6m2".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      top: 2.v,
                      bottom: 2.v,
                    ),
                    child: Text(
                      "lbl_1y2".tr,
                      style: CustomTextStyles.labelLargeBluegray200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwelve() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 53.v),
          Obx(
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
              itemCount: controller.exchangeThreeModelObj.value
                  .exchangethreeItemList.value.length,
              itemBuilder: (context, index) {
                ExchangethreeItemModel model = controller.exchangeThreeModelObj
                    .value.exchangethreeItemList.value[index];
                return ExchangethreeItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
