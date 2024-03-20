import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class ReservTotalAmount extends StatelessWidget {
  ReservEntity? reserv;

  ReservTotalAmount({super.key, required this.reserv});

  @override
  Widget build(BuildContext context) {
    final tourPrice = reserv?.tourPrice ?? 0;
    final fuelCharge = reserv?.fuelCharge ?? 0;
    final serviceCharge = reserv?.serviceCharge ?? 0;

    final int totalAmount = tourPrice + fuelCharge + serviceCharge;

    final TextStyle? _textStyle = textStyleReservData;
    final TextStyle? _textStyleTotalAmount = textStyleTotalAmount;

    List<TotalAmount> totalAmountList = [
      TotalAmount(
          titleName: 'Тур', reservAmount: '$tourPrice', textStyle: _textStyle),
      TotalAmount(
          titleName: 'Топливный сбор',
          reservAmount: '$fuelCharge',
          textStyle: _textStyle),
      TotalAmount(
          titleName: 'Сервисный сбор',
          reservAmount: '$serviceCharge',
          textStyle: _textStyle),
      TotalAmount(
          titleName: 'К оплате',
          reservAmount: '$totalAmount',
          textStyle: _textStyleTotalAmount),
    ];

    return Column(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          decoration: AppSettings.boxCircularDecoration,
          child: Column(
            children: totalAmountList
                .map((totalAmountList) =>
                    _reservTotalAmount(totalAmount: totalAmountList))
                .toList(),
          ),
        ),
        const SizedBox(height: 10),
        ReservButton(
          totalAmount: totalAmount,
          // key: key,
        )
      ],
    );
  }
}

class TotalAmount {
  final String titleName;
  final String reservAmount;
  final TextStyle? textStyle;

  TotalAmount(
      {required this.titleName,
      required this.reservAmount,
      required this.textStyle});
}

class _reservTotalAmount extends StatelessWidget {
  final TotalAmount totalAmount;

  const _reservTotalAmount({super.key, required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Text(totalAmount.titleName, style: textStyleTitle),
            ),
            Text('${totalAmount.reservAmount} ₽', style: totalAmount.textStyle),
          ],
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
