import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelAddressWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelAddressWidget({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        style: buttonAddressStyle,
        onPressed: () {},
        child: Text(
          '${hotel?.adress}',
          style: textStyleName,
        ),
      ),
    );
  }
}
