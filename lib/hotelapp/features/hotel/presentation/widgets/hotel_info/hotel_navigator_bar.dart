import 'package:flutter/material.dart';

class HotelNavigatorBar extends StatelessWidget {
  HotelNavigatorBar({super.key});

  final String _titleName = 'Отель';
  final TextStyle _textStyleName = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'SFProDisplay',
  );


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Center(
        child: Text(_titleName, style: _textStyleName),
      ),
    );
  }
}
