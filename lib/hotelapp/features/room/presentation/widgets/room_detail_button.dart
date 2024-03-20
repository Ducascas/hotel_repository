import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';

class RoomDetailButton extends StatelessWidget {
  RoomDetailButton({super.key});

  final ButtonStyle buttonStyle = buttonRoomDetailStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {},
      child: _insideButton(),
    );
  }

  Row _insideButton() {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Подробнее о номере',
            style: textStyleButtonText,
          ),
        ),
        const Icon(Icons.keyboard_arrow_right),
      ],
    );
  }
}
