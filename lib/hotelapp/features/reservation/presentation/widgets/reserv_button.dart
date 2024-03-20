import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../common/style/app_button_style.dart';
import '../../../../common/style/app_colors.dart';
import '../../../../common/style/app_text_style.dart';
import '../../../paid/paid_main_screen.dart';
import '../pages/reserv_list_screen.dart';
import 'reserv_data/reserv_info_client.dart';

class ReservButton extends StatelessWidget {
  final int? totalAmount;

  ReservButton({super.key, required this.totalAmount});

  final TextStyle? _textStyleButtonText =
      TextStyleSetting(fontSize: 16, fontWeight: FontWeight.w500);

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
      style: AppButtonStyle().buttonStyle,
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
        style: _textStyleButtonText,
      ),
    );
  }
}
