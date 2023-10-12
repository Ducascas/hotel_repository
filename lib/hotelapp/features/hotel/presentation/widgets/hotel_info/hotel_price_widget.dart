import 'package:flutter/material.dart';

import '../../../../../common/app_colors.dart';
import '../../../domain/entitites/hotel_entity.dart';

class HotelPriceWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelPriceWidget({super.key, required this.hotel});

  final TextStyle _textStylePrice = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    fontFamily: 'SFProDisplay',
    color: AppColors.titlePriceColor,
  );

  final TextStyle _textStylePriceForIt = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: 'SFProDisplay',
    color: AppColors.greyColor,
  );

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
        child: Text('от $minimalPrice ₽', style: _textStylePrice),
      );

  Padding _priceForIt(String? priceForIt) => Padding(
        padding: const EdgeInsets.only(bottom: 19),
        child: Text(
          '$priceForIt',
          style: _textStylePriceForIt,
        ),
      );
}
