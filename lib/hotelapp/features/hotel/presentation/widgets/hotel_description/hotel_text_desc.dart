import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/style/style.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class TextDesc extends StatelessWidget {
  final HotelEntity? hotel;

  const TextDesc({super.key, this.hotel});

  @override
  Widget build(BuildContext context) {
    final _titleDesc = hotel?.hotelDescription?.description ?? '';
    final _textDesc = Text(_titleDesc, style: textStyleDesc);

    return SizedBox(
      width: 375,
      height: 76,
      child: _textDesc,
    );
  }
}
