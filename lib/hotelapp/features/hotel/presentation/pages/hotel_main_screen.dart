import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelMainScreen extends StatelessWidget {
  const HotelMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HotelListScreen(),
    );
  }
}
