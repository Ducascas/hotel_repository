import 'package:flutter/material.dart';

import '../../../../common/app_button_style.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_images.dart';
import '../../../../common/app_text_style.dart';

class RoomNavigatorBar extends StatelessWidget {
  final String? hotelName;

  RoomNavigatorBar({super.key, this.hotelName});

  final AssetImage iconBack = AppImages.imageIconBack;

  final ButtonStyle buttonStyle = AppButtonStyle().buttonBackStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 57,
        color: AppColors.cellBackgroundColor,
        child: Column(
          children: [
            const SizedBox(width: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                _buttonPop(context),
                _navigatorName(),
              ],
            ),
            const SizedBox(width: 8),
          ],
        ));
  }

  final TextStyle? _textStyle = TextStyleSetting(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.titleNameColor);

  Expanded _navigatorName() => Expanded(
          child: Center(
              child: Text(
        '$hotelName',
        style: _textStyle,
      )));

  ElevatedButton _buttonPop(BuildContext context) {
    return ElevatedButton(
        style: AppButtonStyle().buttonBackStyle,
        onPressed: () {
          Navigator.pop(context);
        },
        child: _imageIconBack());
  }

  Image _imageIconBack() {
    return Image(
      width: 32,
      height: 32,
      image: iconBack,
    );
  }
}
