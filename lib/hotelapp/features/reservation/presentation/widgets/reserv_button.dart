import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class ReservButton extends StatelessWidget {
  final int? totalAmount;

  const ReservButton({super.key, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 12,
        bottom: 28,
      ),
      height: 88,
      color: AppColors.cellBackgroundColor,
      child: _button(context),
    );
  }

  ElevatedButton _button(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: () {
        if (clientKey.currentState!.validate()) {
          if (formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PaidMainScreen(
                      randomNumber: Random().nextInt(1000) + 1000)),
            );
          }
        }
      },
      child: Text(
        'Оплатить $totalAmount ₽',
        style: textStyleButtonText,
      ),
    );
  }
}
