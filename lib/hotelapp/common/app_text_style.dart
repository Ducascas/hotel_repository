import 'package:flutter/material.dart';

import 'app_colors.dart';

TextStyle? TextStyleSetting(
        {double? fontSize, FontWeight? fontWeight, Color? color}) =>
    TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'SFProDisplay',
        color: color);


 class AppTextStyle {
  final TextStyle textStyleLabelClient = TextStyleSetting(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.textTitleLabelColor) ?? const TextStyle();

  final TextStyle textStyleTextField = TextStyleSetting(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textInfoClientColor) ?? const TextStyle();

  final TextStyle textStyleInformation = TextStyleSetting(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.greyColor) ?? const TextStyle();

  final TextStyle textStyleTitleBig = TextStyleSetting(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.titleNameColor) ?? const TextStyle();

  final TextStyle? textStyleTitle = TextStyleSetting(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.greyColor) ??
      const TextStyle();

  final TextStyle? textStyleReservData = TextStyleSetting(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.titleNameColor) ??
      const TextStyle();

  final TextStyle? textStyleTotalAmount = TextStyleSetting(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.totalAmountColor) ??
      const TextStyle();
}
