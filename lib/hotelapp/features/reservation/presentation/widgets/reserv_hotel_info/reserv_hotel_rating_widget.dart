import 'package:flutter/material.dart';

import '../../../../../common/app_colors.dart';
import '../../../../../common/app_settings.dart';
import '../../../../../common/app_text_style.dart';
import '../../../domain/entitites/reserv_entity.dart';

class ReservRatingWidget extends StatelessWidget {
  final ReservEntity? reserv;

  ReservRatingWidget({super.key, this.reserv});

  final TextStyle? _textStyleRating = TextStyleSetting(
      fontSize: 16,
      fontWeight: FontWeight.w500,
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
      '${reserv?.horating} ${reserv?.ratingName}',
      style: _textStyleRating,
    );
  }
}
