import 'package:flutter/material.dart';

import '../../../../../common/app_colors.dart';
import '../../../domain/entitites/hotel_entity.dart';

class TextDesc extends StatelessWidget {
  final HotelEntity? hotel;

  const TextDesc({super.key, this.hotel});

  static const TextStyle _textStyleDesc = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'SFProDisplay',
      color: AppColors.textDescColor);

  @override
  Widget build(BuildContext context) {
    final String _titleDesc = hotel?.hotelDescription?.description ?? '';
    final Text _textDesc = Text(_titleDesc, style: _textStyleDesc);

    return Container(
      width: 375,
      height: 76,
      child: _textDesc,
    );
  }
}
