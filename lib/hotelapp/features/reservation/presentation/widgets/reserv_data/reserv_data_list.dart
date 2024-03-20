import 'package:flutter/material.dart';

import '../../../../../common/utils/app_settings.dart';
import '../../../../../common/style/app_text_style.dart';
import '../../../domain/entitites/reserv_entity.dart';

class ReservDataList extends StatelessWidget {
  ReservEntity? reserv;

  ReservDataList({super.key, required this.reserv});

  @override
  Widget build(BuildContext context) {
    List<ReservData> reservDara = [
      ReservData(titleName: 'Вылет из', reservData: '${reserv?.departure}'),
      ReservData(
          titleName: 'Страна, город', reservData: '${reserv?.arrivalCountry}'),
      ReservData(
          titleName: 'Даты',
          reservData: '${reserv?.tourDateStart} - ${reserv?.tourDateStop}'),
      ReservData(
          titleName: 'Кол-во ночей',
          reservData: '${reserv?.numberOfNights} ночей'),
      ReservData(titleName: 'Отель', reservData: '${reserv?.hotelName}'),
      ReservData(titleName: 'Номер', reservData: '${reserv?.room}'),
      ReservData(titleName: 'Питание', reservData: '${reserv?.nutrition}'),
    ];

    return Container(
      // height: 280,
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: AppSettings.boxCircularDecoration,
      child: Column(
        children: reservDara
            .map((reservDara) => _reservRowData(reservData: reservDara))
            .toList(),
      ),
    );
  }
}

class ReservData {
  final String titleName;
  final String reservData;

  ReservData({required this.titleName, required this.reservData});
}

class _reservRowData extends StatelessWidget {
  final ReservData reservData;

  _reservRowData({super.key, required this.reservData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Text(reservData.titleName,
                    style: AppTextStyle().textStyleTitle)),
            Expanded(
                flex: 2,
                child: Text(reservData.reservData,
                    style: AppTextStyle().textStyleReservData)),
          ],
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}