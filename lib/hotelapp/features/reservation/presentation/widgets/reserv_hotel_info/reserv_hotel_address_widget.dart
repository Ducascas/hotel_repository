import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import '../../../domain/entitites/reserv_entity.dart';

class ReservHotelAddressWidget extends StatelessWidget {
  final ReservEntity? reserv;

  ReservHotelAddressWidget({super.key, required this.reserv});

  final TextStyle? _textStyleName = TextStyleSetting(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.titleAddressColor);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: AppButtonStyle().buttonAddressStyle,
      onPressed: () {},
      child: Text(
        '${reserv?.hotelAdress}',
        style: _textStyleName,
      ),
    );
  }
}
