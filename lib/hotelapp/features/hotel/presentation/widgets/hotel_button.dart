import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelButton extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelButton({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
        bottom: 28,
      ),
      width: 375,
      height: 88,
      color: AppColors.cellBackgroundColor,
      child: _buttonPush(context),
    );
  }

  ElevatedButton _buttonPush(BuildContext context) {
    final String? hotelName = hotel?.name;

    return ElevatedButton(
      style: buttonStyle,
      onPressed: () => _pushRoomMainScreen(context, hotelName),
      child: Text(
        'К выбору номера',
        style: textStyleButtonText,
      ),
    );
  }

  Future<Object?> _pushRoomMainScreen(
          BuildContext context, String? hotelName) =>
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RoomMainScreen(hotelName: hotelName)),
      );
}
