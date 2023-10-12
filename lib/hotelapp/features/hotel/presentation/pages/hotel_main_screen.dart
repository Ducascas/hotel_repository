import 'package:flutter/material.dart';

import 'hotel_list_screen.dart';

class HotelMainScreen extends StatelessWidget {
  const HotelMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HotelListScreen(),
    );
  }
}
