import 'widgets/exchangetwo_item_widget.dart';
import 'models/exchangetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';
import 'controller/exchange_two_controller.dart';
import 'models/exchange_two_model.dart';

class ExchangeTwoPage extends StatelessWidget {
  ExchangeTwoPage({Key? key})
      : super(
          key: key,
        );

  ExchangeTwoController controller =
      Get.put(ExchangeTwoController(ExchangeTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 33.v),
              _buildExchangeTwo(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExchangeTwo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
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
              .exchangeTwoModelObj.value.exchangetwoItemList.value.length,
          itemBuilder: (context, index) {
            ExchangetwoItemModel model = controller
                .exchangeTwoModelObj.value.exchangetwoItemList.value[index];
            return ExchangetwoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
