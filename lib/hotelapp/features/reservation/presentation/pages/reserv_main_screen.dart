import 'package:flutter/material.dart';

import 'reserv_list_screen.dart';

class ReservMainScreen extends StatelessWidget {
  const ReservMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReservListScreen(),
    );
  }
}
