import '../models/signin_item_model.dart';
import '../controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class SigninItemWidget extends StatelessWidget {
  SigninItemWidget(
    this.signinItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SigninItemModel signinItemModelObj;

  var controller = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Obx(
            () => Text(
              signinItemModelObj.subtitle!.value,
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
