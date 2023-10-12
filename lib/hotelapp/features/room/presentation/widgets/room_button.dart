import 'package:flutter/material.dart';

import '../../../../common/app_button_style.dart';
import '../../../../common/app_text_style.dart';

class RoomButton extends StatelessWidget {
  RoomButton({super.key});

  final TextStyle? _textStyleButtonText =
      TextStyleSetting(fontSize: 16, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppButtonStyle().buttonStyle,
      onPressed: () => Navigator.pushNamed(context, '/reserv'),
      child: Text(
        'Выбрать номер',
        style: _textStyleButtonText,
      ),
    );
  }
}
