import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelRatingWidget extends StatelessWidget {
  final HotelEntity? hotel;

  const HotelRatingWidget({super.key, this.hotel});

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
      style: textStyleRating,
    );
  }
}
