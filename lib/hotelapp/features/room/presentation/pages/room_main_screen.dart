import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/features/room/room.dart';



class RoomMainScreen extends StatelessWidget {
  final String? hotelName;

  const RoomMainScreen({super.key, this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RoomListScreen(hotelName: hotelName),
    );
  }
}
