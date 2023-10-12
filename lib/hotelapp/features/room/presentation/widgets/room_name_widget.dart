import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../common/app_text_style.dart';
import '../../domain/entitites/room_entity.dart';

class RoomNameWidget extends StatelessWidget {
  final RoomEntity? room;

  RoomNameWidget({super.key, required this.room});

  final TextStyle? _textStyleName = TextStyleSetting(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.titleNameColor);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${room?.name}',
      style: _textStyleName,
    );
  }
}
