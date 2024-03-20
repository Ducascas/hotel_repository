import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelPriceWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelPriceWidget({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    int? minimalPrice = hotel?.minimalPrice;
    String? priceForIt = hotel?.priceForIt?.toLowerCase();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _minimalPrice(minimalPrice),
        const SizedBox(width: 13),
        _priceForIt(priceForIt),
      ],
    );
  }

  Padding _minimalPrice(int? minimalPrice) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text('от $minimalPrice ₽', style: textStylePrice),
      );

  Padding _priceForIt(String? priceForIt) => Padding(
        padding: const EdgeInsets.only(bottom: 19),
        child: Text(
          '$priceForIt',
          style: textStyleTitle,
        ),
      );
}
