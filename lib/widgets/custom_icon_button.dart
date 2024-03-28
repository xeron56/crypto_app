import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(20.h),
                  border: Border.all(
                    color: appTheme.gray40026,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get outlineTeal => BoxDecoration(
        borderRadius: BorderRadius.circular(29.h),
        border: Border.all(
          color: appTheme.teal50,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get gradientDeepPurpleAToCyanA => BoxDecoration(
        borderRadius: BorderRadius.circular(16.h),
        gradient: LinearGradient(
          begin: Alignment(0.12, 0),
          end: Alignment(1.03, 0),
          colors: [
            appTheme.deepPurpleA100,
            appTheme.cyanA400,
          ],
        ),
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get fillTealTL17 => BoxDecoration(
        color: appTheme.teal50.withOpacity(0.1),
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get fillTealTL171 => BoxDecoration(
        color: appTheme.teal50.withOpacity(0.2),
        borderRadius: BorderRadius.circular(17.h),
      );
}
