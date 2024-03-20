import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import '../../../domain/entitites/hotel_entity.dart';

class HotelNameWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelNameWidget({super.key, required this.hotel});

  final TextStyle _textStyleName = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      fontFamily: 'SFProDisplay',
      color: AppColors.titleNameColor);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '${hotel?.name}',
        style: _textStyleName,
      ),
    );
  }
}
