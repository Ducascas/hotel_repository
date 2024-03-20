import 'package:flutter/material.dart';

import '../../../../common/style/app_colors.dart';
import '../../../../common/style/app_text_style.dart';
import '../../domain/entitites/room_entity.dart';

class RoomPeculiarities extends StatelessWidget {
  final RoomEntity? room;

  RoomPeculiarities({super.key, this.room});

  final TextStyle _textStylePeculiarities = TextStyleSetting(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.greyColor) ??
      const TextStyle();

  @override
  Widget build(BuildContext context) {
    final peculiaritiesLength = room?.peculiarities?.length ?? 0;
    final peculiaritiesValue = room?.peculiarities ?? [];

    Text peculiaritiesText(int index) => Text(
          peculiaritiesValue[index],
          style: _textStylePeculiarities,
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
