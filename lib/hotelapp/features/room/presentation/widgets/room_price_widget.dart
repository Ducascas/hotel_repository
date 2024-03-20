import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class RoomPriceWidget extends StatelessWidget {
  final RoomEntity? room;

  const RoomPriceWidget({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    int? price = room?.price;
    String? priceForIt = room?.pricePer?.toLowerCase();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _minimalPrice(price),
        // _iconPrice,
        const SizedBox(width: 13),
        _priceForIt(priceForIt),
      ],
    );
  }

  Padding _minimalPrice(int? price) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text('$price ₽', style: textStylePrice),
      );

  Padding _priceForIt(String? priceForIt) => Padding(
        padding: const EdgeInsets.only(bottom: 19),
        child: Text(
          '$priceForIt',
          style: textStyleTitle,
        ),
      );
}
