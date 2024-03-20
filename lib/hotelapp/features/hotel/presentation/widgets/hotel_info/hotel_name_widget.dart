import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelNameWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelNameWidget({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        '${hotel?.name}',
        style: textStyleTitleBig,
      ),
    );
  }
}
