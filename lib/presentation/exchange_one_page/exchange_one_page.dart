import 'package:crypto_app/widgets/custom_elevated_button.dart';
import 'widgets/exchangeone_item_widget.dart';
import 'models/exchangeone_item_model.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_one_controller.dart';
import 'models/exchange_one_model.dart';

class ExchangeOnePage extends StatelessWidget {
  ExchangeOnePage({Key? key})
      : super(
          key: key,
        );

  ExchangeOneController controller =
      Get.put(ExchangeOneController(ExchangeOneModel().obs));

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
                  children: [
                    _buildD(),
                    SizedBox(height: 40.v),
                    _buildDecTwo(),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlineBluegray500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 211.v,
            width: 342.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 12.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: fs.Svg(
                          ImageConstant.imgGroup25,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 22.v),
                        Container(
                          height: 164.v,
                          width: 325.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 52.h,
                            vertical: 44.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: fs.Svg(
                                ImageConstant.imgGroup46022,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup46053,
                                height: 38.v,
                                alignment: Alignment.bottomRight,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 136.h,
                                    right: 17.h,
                                    bottom: 5.v,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "lbl_20_510_usd".tr,
                                          style: CustomTextStyles
                                              .labelLargeTeal50_1,
                                        ),
                                      ),
                                      Text(
                                        "lbl_21_oct_14_45".tr,
                                        style: theme.textTheme.labelMedium,
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
                Opacity(
                  opacity: 0.23,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup46028,
                    height: 32.v,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_12_00".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "lbl_13_00".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "lbl_14_002".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "lbl_15_002".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "lbl_16_00".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Text(
                  "lbl_17_00".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_1h".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                CustomElevatedButton(
                  height: 25.v,
                  width: 49.h,
                  text: "lbl_1d".tr,
                  margin: EdgeInsets.only(left: 21.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                  buttonTextStyle: theme.textTheme.titleSmall!,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_1w".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 33,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_1m".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 33,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_6m".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 33,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_1y".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDecTwo() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 64.v,
            crossAxisCount: 2,
            mainAxisSpacing: 21.h,
            crossAxisSpacing: 21.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .exchangeOneModelObj.value.exchangeoneItemList.value.length,
          itemBuilder: (context, index) {
            ExchangeoneItemModel model = controller
                .exchangeOneModelObj.value.exchangeoneItemList.value[index];
            return ExchangeoneItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
