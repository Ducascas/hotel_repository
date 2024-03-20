import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class ReservHotelAddressWidget extends StatelessWidget {
  final ReservEntity? reserv;

  const ReservHotelAddressWidget({super.key, required this.reserv});


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: buttonAddressStyle,
      onPressed: () {},
      child: Text(
        '${reserv?.hotelAdress}',
        style: textStyleName,
      ),
    );
  }
}
