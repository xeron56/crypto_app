import 'package:flutter/material.dart';
import 'package:crypto_app/core/utils/size_utils.dart';
import 'package:crypto_app/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.53),
      );
  static get bodySmallTeal50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal50.withOpacity(0.53),
      );
  // Display text style
  static get displayMediumCyan300 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.cyan300,
      );
  static get displayMediumMontserrat =>
      theme.textTheme.displayMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displayMediumPrimary => theme.textTheme.displayMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Label text style
  static get labelLargeBlueA70001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueA70001,
        fontWeight: FontWeight.w800,
      );
  static get labelLargeBluegray200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray200,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeTeal50 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal50.withOpacity(0.46),
      );
  static get labelLargeTeal50_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal50,
      );
  static get labelMediumSFProDisplayTeal50 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: appTheme.teal50,
        fontSize: 11.fSize,
      );
  // Title text style
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumBluegray500SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCyan300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan300,
      );
  static get titleMediumPink300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink300,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProDisplayWhiteA700 =>
      theme.textTheme.titleMedium!.sFProDisplay.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallBluegray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get titleSmallBluegray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallTeal50 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.teal50.withOpacity(0.53),
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
