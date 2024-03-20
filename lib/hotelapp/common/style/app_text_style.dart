import 'package:flutter/material.dart';

import 'app_colors.dart';

TextStyle? textStyleSetting(
        {double? fontSize, FontWeight? fontWeight, Color? color}) =>
    TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: 'SFProDisplay',
        color: color);

final textStyleLabelClient = textStyleSetting(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textTitleLabelColor) ??
    const TextStyle();

final textStyleTextField = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textInfoClientColor) ??
    const TextStyle();

final textStyleInformation = textStyleSetting(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.greyColor) ??
    const TextStyle();

final textStyleTitleBig = textStyleSetting(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: AppColors.titleNameColor) ??
    const TextStyle();

final textStyleTitle = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.greyColor) ??
    const TextStyle();

final textStyleReservData = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.titleNameColor) ??
    const TextStyle();

final textStyleTotalAmount = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.totalAmountColor) ??
    const TextStyle();

final textStyleName = textStyleSetting(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.titleAddressColor) ??
    const TextStyle();

final textStylePrice = textStyleSetting(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: AppColors.titlePriceColor,
    ) ??
    const TextStyle();

final textStyleRating = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.ratingTextColor) ??
    const TextStyle();

final textStyleNavigatorName = textStyleSetting(
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

final textStyleButtonText = textStyleSetting(
  fontSize: 16,
  fontWeight: FontWeight.w500,
);

final textStyleMainSetting = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textMenuColor) ??
    const TextStyle();

final textStyleSubSetting = textStyleSetting(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.greyColor) ??
    const TextStyle();

final textStylePeculiarities = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.greyColor) ??
    const TextStyle();

final textStyleDesc = textStyleSetting(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textDescColor) ??
    const TextStyle();

final textSuccessStyle = textStyleSetting(
    fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.titleNameColor);
