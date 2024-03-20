import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppButtonStyle {
  ButtonStyle buttonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.buttonColor),
      foregroundColor: MaterialStateProperty.all(AppColors.textButtonColor),
      fixedSize: MaterialStateProperty.all(const Size(400, 48)),
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      padding: MaterialStateProperty.all(
          const EdgeInsets.only(top: 15, bottom: 14)));

  final ButtonStyle buttonBackStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.cellBackgroundColor),
      minimumSize: MaterialStateProperty.all(const Size(44, 44)),
      elevation: MaterialStateProperty.all(0),
      padding: MaterialStateProperty.all(const EdgeInsets.all(6)));

  final ButtonStyle buttonAddressStyle = ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColors.titleAddressColor),
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      minimumSize: MaterialStateProperty.all(const Size(343, 17)),
      alignment: Alignment.centerLeft);

  final ButtonStyle buttonTouristStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    minimumSize: MaterialStateProperty.all(const Size(32, 32)),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
  );

  final ButtonStyle buttonAddTouristStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppColors.buttonColor),
    padding: MaterialStateProperty.all(EdgeInsets.zero),
    minimumSize: MaterialStateProperty.all(const Size(32, 32)),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
  );

  final ButtonStyle buttonRoomDetailStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(AppColors.buttonNumberColor),
    foregroundColor: MaterialStateProperty.all(AppColors.titleAddressColor),
    fixedSize: MaterialStateProperty.all(const Size(192, 29)),
    elevation: MaterialStateProperty.all(0),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    padding: MaterialStateProperty.all(
        const EdgeInsets.only(top: 5, bottom: 5, left: 10)),
  );
}
