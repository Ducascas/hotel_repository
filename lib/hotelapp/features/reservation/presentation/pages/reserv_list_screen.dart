import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app_button_style.dart';
import '../../../../common/app_colors.dart';
import '../../../../common/app_images.dart';
import '../../../../common/app_settings.dart';
import '../../../../common/app_text_style.dart';
import '../../domain/entitites/reserv_entity.dart';
import '../cubit/reserv_cubit.dart';
import '../cubit/reserv_state.dart';
import '../widgets/reserv_data/reserv_data_list.dart';
import '../widgets/reserv_data/reserv_info_client.dart';
import '../widgets/reserv_data/reserv_info_tourist.dart';
import '../widgets/reserv_hotel_info/reserv_hotel_address_widget.dart';
import '../widgets/reserv_hotel_info/reserv_hotel_name_widget.dart';
import '../widgets/reserv_hotel_info/reserv_hotel_rating_widget.dart';
import '../widgets/reserv_navigator_bar.dart';
import '../widgets/reserv_total_amount.dart';

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class ReservListScreen extends StatefulWidget {
  const ReservListScreen({super.key});

  @override
  State<ReservListScreen> createState() => _ReservListScreenState();
}

class _ReservListScreenState extends State<ReservListScreen> {
  final AssetImage _iconAdd = AppImages.imageIconAdd;

  List<ReservInfoTourist> touristList = [];

  final List<String> touristNumbersName = [
    "Второй",
    "Третий",
    "Четвертый",
    "Пятый",
    "Шестой"
  ];

  int _count = 0;

  void _addTouristList() {
    if (_count < touristNumbersName.length) {
      setState(() {
        _count++;
        touristList.add(ReservInfoTourist(
            indexListTourist: touristNumbersName[_count - 1]));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservListCubit, ReservState>(builder: (context, state) {
      ReservEntity? reserv;

      if (state is ReservLoading) {
        return AppSettings.loadingIndicator;
      } else if (state is ReservLoaded) {
        reserv = state.reserv;
      } else if (state is ReservError) {
        return Text(
          state.message,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        );
      }

      return Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(height: 44, color: AppColors.cellBackgroundColor),
            ReservNavigatorBar(),
            const SizedBox(height: 8),
            _reservHotelInfo(reserv),
            const SizedBox(height: 8),
            ReservDataList(reserv: reserv),
            const SizedBox(height: 8),
            const ReservInfoClient(),
            const SizedBox(height: 8),
            ReservInfoTourist(indexListTourist: 'Первый'),
            _reservInfoTouristList(),
            _addTourist(),
            const SizedBox(height: 8),
            ReservTotalAmount(
              reserv: reserv,
              // key: formKey,
            )
          ],
        ),
      );
    });
  }

  Column _reservInfoTouristList() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _touristList(),
      );

  List<ReservInfoTourist> _touristList() =>
      touristList.map((touristList) => touristList).toList();

  Container _addTourist() {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      decoration: AppSettings.boxCircularDecoration,
      child: _rowAddTourist(),
    );
  }

  Row _rowAddTourist() {
    return Row(
      children: [
        _titleRowAdd(),
        _buttonRowAdd(),
      ],
    );
  }

  ElevatedButton _buttonRowAdd() {
    return ElevatedButton(
      style: AppButtonStyle().buttonTouristStyle,
      onPressed: _addTouristList,
      child: _imageAdd(),
    );
  }

  Image _imageAdd() {
    return Image(
      width: 32,
      height: 32,
      image: _iconAdd,
    );
  }

  Expanded _titleRowAdd() {
    return Expanded(
      child: Text(
        'Добавить туриста',
        style: AppTextStyle().textStyleTitleBig,
      ),
    );
  }

  Container _reservHotelInfo(ReservEntity? reserv) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: AppSettings.boxCircularDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReservRatingWidget(reserv: reserv),
          const SizedBox(height: 8),
          ReservHotelNameWidget(reserv: reserv),
          // const SizedBox(height: 8),
          ReservHotelAddressWidget(reserv: reserv)
        ],
      ),
    );
  }
}
