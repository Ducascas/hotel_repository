import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class RoomNameWidget extends StatelessWidget {
  final RoomEntity? room;

  const RoomNameWidget({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${room?.name}',
      style: textStyleName,
    );
  }
}
