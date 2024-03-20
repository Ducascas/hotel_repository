import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';

class HotelNavigatorBar extends StatelessWidget {
  const HotelNavigatorBar({super.key});

  final String _titleName = 'Отель';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Center(
        child: Text(_titleName, style: textStyleNavigatorName),
      ),
    );
  }
}
