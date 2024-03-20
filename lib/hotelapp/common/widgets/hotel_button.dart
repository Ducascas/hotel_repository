import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/hotel/hotel.dart';
import 'package:hotel_app/hotelapp/features/room/presentation/pages/room_main_screen.dart';

class HotelButton extends StatelessWidget {
  final HotelEntity? hotel;

  HotelButton({super.key, required this.hotel});

  final TextStyle? _textStyleButtonText =
      TextStyleSetting(fontSize: 16, fontWeight: FontWeight.w500);

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
      style: AppButtonStyle().buttonStyle,
      onPressed: () => _pushRoomMainScreen(context, hotelName),
      child: Text(
        'К выбору номера',
        style: _textStyleButtonText,
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
