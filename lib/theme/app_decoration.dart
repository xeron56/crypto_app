import 'package:flutter/material.dart';
import 'package:crypto_app/core/app_export.dart';

class AppDecoration {
  // Blur decorations
  static BoxDecoration get blur => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray200,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(1.01, 0),
          end: Alignment(0.03, 1.03),
          colors: [
            appTheme.whiteA700.withOpacity(0.12),
            appTheme.whiteA700.withOpacity(0.01),
            appTheme.whiteA700.withOpacity(0.01),
          ],
        ),
      );

  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.cyan50,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA200,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink300,
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA100,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple50,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberToDeepOrange => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.94),
          end: Alignment(1.26, 0.14),
          colors: [
            appTheme.amber300,
            appTheme.deepOrange300,
          ],
        ),
      );
  static BoxDecoration get gradientBlueAToBlueA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.62),
          end: Alignment(0.5, -0.05),
          colors: [
            appTheme.blueA700.withOpacity(0.04),
            appTheme.deepPurpleA1004f,
            appTheme.blueA700,
          ],
        ),
      );
  static BoxDecoration get gradientBlueGrayToOnPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.02, 1.01),
          end: Alignment(0.97, 0.34),
          colors: [
            appTheme.blueGray90001,
            theme.colorScheme.onPrimary,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToGreenA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.94),
          end: Alignment(1.26, 0.14),
          colors: [
            appTheme.cyan30001,
            appTheme.greenA100,
          ],
        ),
      );
  static BoxDecoration get gradientDeepPurpleAToCyanA => BoxDecoration(
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.12, 0.76),
          end: Alignment(1.03, 0.43),
          colors: [
            appTheme.deepPurpleA100,
            appTheme.cyanA400,
          ],
        ),
      );
  static BoxDecoration get gradientPinkToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.94),
          end: Alignment(1.26, 0.14),
          colors: [
            appTheme.pink300,
            appTheme.indigo100,
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToDeepPurple =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, -0.28),
          end: Alignment(0.33, 1.33),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.deepPurple800,
          ],
        ),
      );
  static BoxDecoration get gradientTealToErrorContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.05, 0.97),
          end: Alignment(1.03, 0.43),
          colors: [
            appTheme.teal200,
            appTheme.pinkA10001,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAFToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.03),
          end: Alignment(1.01, 1.02),
          colors: [
            appTheme.whiteA7004f.withOpacity(0.18),
            appTheme.gray10000,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAFToGray10000 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.03),
          end: Alignment(1.01, 1.02),
          colors: [
            appTheme.whiteA7004f,
            appTheme.gray10000,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAFToGray100001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, 0.03),
          end: Alignment(1.01, 1.02),
          colors: [
            appTheme.whiteA7004f,
            appTheme.gray10000,
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.62),
          end: Alignment(0.5, -0.05),
          colors: [
            appTheme.whiteA700.withOpacity(0.03),
            appTheme.whiteA700.withOpacity(0.08),
            appTheme.whiteA700.withOpacity(0.42),
          ],
        ),
      );
  static BoxDecoration get gradientWhiteAToWhiteA700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.01, 0),
          end: Alignment(0.03, 1.03),
          colors: [
            appTheme.whiteA700.withOpacity(0.28),
            appTheme.whiteA700.withOpacity(0.01),
            appTheme.whiteA700.withOpacity(0.01),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.blueGray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.blueGray900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        border: Border.all(
          color: appTheme.blueGray700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray500 => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray700 => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.blueGray700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray900 => BoxDecoration(
        color: appTheme.purple50,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray9001 => BoxDecoration(
        color: appTheme.greenA200,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray9002 => BoxDecoration(
        color: appTheme.yellow100,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray9003 => BoxDecoration(
        color: appTheme.cyan50,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray9004 => BoxDecoration(
        color: appTheme.pinkA100,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBluegray9005 => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.blueGray900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.blueGray900,
        border: Border.all(
          color: appTheme.gray40026,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration();
  static BoxDecoration get outline2 => BoxDecoration();
  static BoxDecoration get outline3 => BoxDecoration();
  static BoxDecoration get outline4 => BoxDecoration();
  static BoxDecoration get outline5 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get outline6 => BoxDecoration(
        color: appTheme.blueGray900,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder37 => BorderRadius.circular(
        37.h,
      );
  static BorderRadius get circleBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get circleBorder51 => BorderRadius.circular(
        51.h,
      );
  static BorderRadius get circleBorder56 => BorderRadius.circular(
        56.h,
      );
  static BorderRadius get circleBorder59 => BorderRadius.circular(
        59.h,
      );
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        70.h,
      );
  static BorderRadius get circleBorder77 => BorderRadius.circular(
        77.h,
      );
  static BorderRadius get circleBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get circleBorder94 => BorderRadius.circular(
        94.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL40 => BorderRadius.only(
        topLeft: Radius.circular(24.h),
        topRight: Radius.circular(24.h),
        bottomLeft: Radius.circular(40.h),
        bottomRight: Radius.circular(40.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
