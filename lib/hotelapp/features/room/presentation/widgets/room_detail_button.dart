import 'package:flutter/material.dart';
import '../../../../common/app_button_style.dart';
import '../../../../common/app_text_style.dart';

class RoomDetailButton extends StatelessWidget {
  RoomDetailButton({super.key});

  final ButtonStyle buttonStyle = AppButtonStyle().buttonRoomDetailStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {},
      child: _insideButton(),
    );
  }

  Row _insideButton() {
    final TextStyle _textStyle =
        TextStyleSetting(fontSize: 16, fontWeight: FontWeight.w500) ??
            const TextStyle();

    return Row(
      children: [
        Expanded(
          child: Text(
            'Подробнее о номере',
            style: _textStyle,
          ),
        ),
        const Icon(Icons.keyboard_arrow_right),
      ],
    );
  }
}
