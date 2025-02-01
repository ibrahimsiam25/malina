import 'package:flutter/material.dart';
import 'package:malina/core/theme/app_color.dart';

abstract class AppTextStyles {
  static TextStyle grayS16W400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.0,
    color: AppColors.gray,
  );
  static TextStyle whiteS16W500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.0,
    color: AppColors.white,
  );
  static TextStyle blackS22W500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 22,
    letterSpacing: 0.0,
    color: AppColors.black,
  );
  static TextStyle blackS16W300 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 16,
    letterSpacing: 0.0,
    color: AppColors.black,
  );
  static TextStyle blackS17W500 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
    letterSpacing: 0.0,
    color: AppColors.black,
  );
    static TextStyle blackS12W400 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.0,
    color: AppColors.black,
  );
}
