import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelListCubit, HotelState>(
      builder: (context, state) {
        HotelEntity? hotel;

        if (state is HotelLoading) {
          return AppSettings.loadingIndicator;
        } else if (state is HotelLoaded) {
          hotel = state.hotel;
        } else if (state is HotelError) {
          return Text(
            state.message,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          );
        }
        return ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(height: 44, color: AppColors.cellBackgroundColor),
            _hotelInfo(hotel: hotel),
            const SizedBox(height: 8),
            _hotelDesc(hotel: hotel),
            const SizedBox(height: 12),
            HotelButton(hotel: hotel),
          ],
        );
      },
    );
  }
}

class _hotelInfo extends StatelessWidget {
  final HotelEntity? hotel;

  const _hotelInfo({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 486,
      decoration: AppSettings.boxVerticalDecoration,
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          HotelNavigatorBar(),
          const SizedBox(height: 5),
          HotelImageWidgets(hotel: hotel),
          const SizedBox(height: 16),
          HotelRatingWidget(hotel: hotel),
          const SizedBox(height: 8),
          HotelNameWidget(hotel: hotel),
          const SizedBox(height: 7),
          HotelAddressWidget(hotel: hotel),
          const SizedBox(height: 16),
          HotelPriceWidget(hotel: hotel),
        ],
      ),
    );
  }
}

class _hotelDesc extends StatelessWidget {
  final HotelEntity? hotel;

  const _hotelDesc({super.key, this.hotel});

  static const String _nameDesc = 'Об отеле';

  static const TextStyle _textStyleDesc = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      fontFamily: 'SFProDisplay',
      color: AppColors.titleNameColor);

  static const Text _titleDesc = Text(_nameDesc, style: _textStyleDesc);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppSettings.boxCircularDecoration,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleDesc,
          const SizedBox(height: 16),
          PeculiaritiesDesc(hotel: hotel),
          const SizedBox(height: 12),
          TextDesc(hotel: hotel),
          const SizedBox(height: 16),
          MenuList(),
        ],
      ),
    );
  }
}
