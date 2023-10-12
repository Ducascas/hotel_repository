import 'package:flutter/material.dart';

import '../../../../../common/app_button_style.dart';
import '../../../../../common/app_colors.dart';
import '../../../domain/entitites/hotel_entity.dart';

class HotelAddressWidget extends StatelessWidget {
  final HotelEntity? hotel;

  HotelAddressWidget({super.key, required this.hotel});

  final TextStyle _textStyleName = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: 'SFProDisplay',
      color: AppColors.titleAddressColor);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        style: AppButtonStyle().buttonAddressStyle,
        onPressed: () {},
        child: Text(
          '${hotel?.adress}',
          style: _textStyleName,
        ),
      ),
    );
  }
}
