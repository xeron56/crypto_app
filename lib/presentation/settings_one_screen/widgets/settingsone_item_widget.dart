import '../models/settingsone_item_model.dart';
import '../controller/settings_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

// ignore: must_be_immutable
class SettingsoneItemWidget extends StatelessWidget {
  SettingsoneItemWidget(
    this.settingsoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsoneItemModel settingsoneItemModelObj;

  var controller = Get.find<SettingsOneController>();

  @override
  Widget build(BuildContext context) {
    return _buildFrame();
  }

  /// Section Widget
  Widget _buildFrame() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.3,
          child: Obx(
            () => Text(
              settingsoneItemModelObj.subtitle!.value,
              style: CustomTextStyles.labelLargeTeal50,
            ),
          ),
        ),
        SizedBox(height: 15.v),
        Obx(
          () => Text(
            settingsoneItemModelObj.subtitle1!.value,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 16.v),
        Opacity(
          opacity: 0.2,
          child: Divider(
            color: appTheme.teal50.withOpacity(0.42),
          ),
        ),
      ],
    );
  }
}
