import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';
import '../../domain/entitites/room_entity.dart';

class RoomPriceWidget extends StatelessWidget {
  final RoomEntity? room;

  RoomPriceWidget({super.key, required this.room});

  final TextStyle? _textStylePrice = TextStyleSetting(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: AppColors.titlePriceColor,
  );

  final TextStyle? _textStylePriceForIt = TextStyleSetting(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.greyColor,
  );

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
        child: Text('$price ₽', style: _textStylePrice),
      );

  Padding _priceForIt(String? priceForIt) => Padding(
        padding: const EdgeInsets.only(bottom: 19),
        child: Text(
          '$priceForIt',
          style: _textStylePriceForIt,
        ),
      );
}
