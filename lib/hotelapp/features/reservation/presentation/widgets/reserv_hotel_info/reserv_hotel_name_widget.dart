import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';


import '../../../domain/entitites/reserv_entity.dart';

class ReservHotelNameWidget extends StatelessWidget {
  final ReservEntity? reserv;

  ReservHotelNameWidget({super.key, required this.reserv});

  final TextStyle? _textStyleName = TextStyleSetting(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.titleNameColor);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${reserv?.hotelName}',
      style: _textStyleName,
    );
  }
}
