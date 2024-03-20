import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';

abstract class AppSettings {
  static const loadingIndicator = Padding(
    padding: EdgeInsets.all(8.0),
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );

  // BoxDecoration _boxDecoration(
  //         Color color, double size) =>
  //     BoxDecoration(
  //       color: color,
  //       borderRadius: BorderRadius.vertical(
  //         bottom: Radius.circular(size),
  //       ),
  //     );

  static const boxVerticalDecoration = BoxDecoration(
    color: AppColors.cellBackgroundColor,
    borderRadius: BorderRadius.vertical(
      bottom: Radius.circular(12.0),
    ),
  );

  static const boxCircularDecoration = BoxDecoration(
    color: AppColors.cellBackgroundColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const ratingDecoration = BoxDecoration(
    color: AppColors.ratingBackgroundColor,
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );

  static const menuListDecoration = BoxDecoration(
    color: AppColors.menuListBackgroundColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const imageBarDecoration = BoxDecoration(
    color: AppColors.cellBackgroundColor,
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );

  static const boxTextFieldForm = BoxDecoration(
    color: AppColors.mainBackgroundColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const errorFieldForm = BoxDecoration(
    color: AppColors.errorTextFieldColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const paidImageParty = BoxDecoration(
    color: AppColors.greyColor,
    borderRadius: BorderRadius.all(
      Radius.circular(12),
    ),
  );

  static const paidLine = BoxDecoration(
    border: BorderDirectional(
      top: BorderSide(color: AppColors.paidLineColor),
    ),
  );
}
