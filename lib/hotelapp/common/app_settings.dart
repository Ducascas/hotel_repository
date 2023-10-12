import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppSettings {
  static const loadingIndicator = Padding(
    padding: EdgeInsets.all(8.0),
    child: Center(child: CircularProgressIndicator()),
  );

  static const BoxDecoration boxVerticalDecoration = BoxDecoration(
    color: AppColors.cellBackgroundColor,
    borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0)),
  );

  static const BoxDecoration boxCircularDecoration = BoxDecoration(
    color: AppColors.cellBackgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const BoxDecoration ratingDecoration = BoxDecoration(
    color: AppColors.ratingBackgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );

  static const BoxDecoration menuListDecoration = BoxDecoration(
    color: AppColors.menuListBackgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const BoxDecoration imageBarDecoration = BoxDecoration(
    color: AppColors.cellBackgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );

  static const BoxDecoration boxTextFieldForm = BoxDecoration(
    color: AppColors.mainBackgroundColor,
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const BoxDecoration errorFieldForm = BoxDecoration(
    color: AppColors.errorTextFieldColor,
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const BoxDecoration paidImageParty = BoxDecoration(
    color: AppColors.greyColor,
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static const BoxDecoration paidLine = BoxDecoration(
    border: BorderDirectional(
      top: BorderSide(color: AppColors.paidLineColor),
    ),
  );
}
