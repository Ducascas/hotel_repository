import 'package:flutter/material.dart';

import '../../../../../common/app_button_style.dart';
import '../../../../../common/app_colors.dart';
import '../../../../../common/app_text_style.dart';
import '../../../../room/presentation/pages/room_main_screen.dart';
import '../../../domain/entitites/hotel_entity.dart';

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
