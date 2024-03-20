import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class ReservHotelNameWidget extends StatelessWidget {
  final ReservEntity? reserv;

  const ReservHotelNameWidget({super.key, required this.reserv});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${reserv?.hotelName}',
      style: textStyleTitleBig,
    );
  }
}
