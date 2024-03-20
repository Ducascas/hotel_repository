import 'package:flutter/material.dart';

import '../../../../../common/style/app_colors.dart';
import '../../../../../common/utils/app_settings.dart';
import '../../../domain/entitites/hotel_entity.dart';

class HotelRatingWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelRatingWidget({super.key, this.hotel});

  final TextStyle _textStyleRating = const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: 'SFProDisplay',
      color: AppColors.ratingTextColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149,
      height: 29,
      decoration: AppSettings.ratingDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _iconRating(),
          _textRating(),
        ],
      ),
    );
  }

  Icon _iconRating() {
    return const Icon(
      Icons.star,
      weight: 15,
      color: AppColors.ratingTextColor,
    );
  }

  Text _textRating() {
    return Text(
      '${hotel?.rating} ${hotel?.ratingName}',
      style: _textStyleRating,
    );
  }
}
