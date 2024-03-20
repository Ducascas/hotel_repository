import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';

class RoomNavigatorBar extends StatelessWidget {
  final String? hotelName;

  RoomNavigatorBar({super.key, this.hotelName});

  final AssetImage iconBack = AppImages.imageIconBack;

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
      ),
    );
  }

  Expanded _navigatorName() => Expanded(
        child: Center(
          child: Text(
            '$hotelName',
            style: textSuccessStyle,
          ),
        ),
      );

  ElevatedButton _buttonPop(BuildContext context) {
    return ElevatedButton(
        style: buttonBackStyle,
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
