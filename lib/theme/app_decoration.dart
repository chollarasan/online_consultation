import 'package:flutter/material.dart';
import 'package:online_consultation_changes/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineBluegray30016 => BoxDecoration(
        color: ColorConstant.gray5,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.blueGray3,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );

  static BoxDecoration get outlineGray1003f => BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray10,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );

  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );

  static BoxDecoration get outlineBlueA4004c => BoxDecoration(
        color: ColorConstant.blueA402,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.blueA,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );

  static BoxDecoration get txtOutlineBlueA4004c => BoxDecoration(
        color: ColorConstant.blueA402,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.blueA,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );

  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );

  static BoxDecoration get outlineBluegray30016 => BoxDecoration(
        color: ColorConstant.gray5,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.blueGray3,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );

  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.white,
      );

  static BoxDecoration get txtFillBlueA40001 => BoxDecoration(
        color: ColorConstant.blueA40,
      );

  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: ColorConstant.gray10,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder106 = BorderRadius.circular(
    getHorizontalSize(
      106,
    ),
  );

  static BorderRadius circleBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24,
    ),
  );

  static BorderRadius roundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius txtRoundedBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14,
    ),
  );

  static BorderRadius circleBorder39 = BorderRadius.circular(
    getHorizontalSize(
      39,
    ),
  );

  static BorderRadius circleBorder29 = BorderRadius.circular(
    getHorizontalSize(
      29,
    ),
  );
}

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
