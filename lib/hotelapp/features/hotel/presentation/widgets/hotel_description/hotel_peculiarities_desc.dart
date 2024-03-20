import 'package:flutter/material.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class PeculiaritiesDesc extends StatelessWidget {
  final HotelEntity? hotel;

  const PeculiaritiesDesc({super.key, this.hotel});

  @override
  Widget build(BuildContext context) {
    final peculiaritiesLength =
        hotel?.hotelDescription?.peculiarities?.length ?? 0;
    final peculiaritiesValue = hotel?.hotelDescription?.peculiarities ?? [];

    Text peculiaritiesText(int index) => Text(
          peculiaritiesValue[index],
          style: textStylePeculiarities,
        );

    if (peculiaritiesLength > 0) {
      return _wrapPeculiarities(peculiaritiesLength, peculiaritiesText);
    } else {
      return _wrapPeculiarities(0, peculiaritiesText);
    }
  }

  Wrap _wrapPeculiarities(
      int peculiaritiesLength, Text Function(int index) peculiaritiesText) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: List.generate(
        peculiaritiesLength,
        (int index) {
          return _chipText(peculiaritiesText, index);
        },
      ),
    );
  }

  Chip _chipText(Text Function(int index) peculiaritiesText, int index) {
    return Chip(
      backgroundColor: AppColors.chipBackgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      label: peculiaritiesText(index),
    );
  }
}
