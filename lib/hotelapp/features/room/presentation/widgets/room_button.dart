import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';

class RoomButton extends StatelessWidget {
  const RoomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () => Navigator.pushNamed(context, '/reserv'),
      child: Text(
        'Выбрать номер',
        style: textStyleButtonText,
      ),
    );
  }
}
