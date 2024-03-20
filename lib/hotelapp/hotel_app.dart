import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HotelListCubit>(
            create: (context) => sl<HotelListCubit>()..loadHotel(),
          ),
          BlocProvider<RoomListCubit>(
            create: (context) => sl<RoomListCubit>()..loadRoom(),
          ),
          BlocProvider<ReservListCubit>(
            create: (context) => sl<ReservListCubit>()..loadReserv(),
          ),
        ],
        child: MaterialApp(
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: AppColors.mainBackgroundColor,
          ),
          routes: {
            '/hotel': (context) => const HotelMainScreen(),
            '/room': (context) => const RoomMainScreen(),
            '/reserv': (context) => const ReservMainScreen(),
            '/paid': (context) => const PaidMainScreen(),
          },
          initialRoute: '/hotel',
        ));
  }
}
