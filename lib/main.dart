import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/hotelapp/common/app_colors.dart';
import 'package:hotel_app/hotelapp/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:hotel_app/hotelapp/locator_service.dart' as di;

import 'hotelapp/features/hotel/presentation/pages/hotel_main_screen.dart';
import 'hotelapp/features/paid/paid_main_screen.dart';
import 'hotelapp/features/reservation/presentation/cubit/reserv_cubit.dart';
import 'hotelapp/features/reservation/presentation/pages/reserv_main_screen.dart';
import 'hotelapp/features/room/presentation/cubit/room_cubit.dart';
import 'hotelapp/features/room/presentation/pages/room_main_screen.dart';
import 'hotelapp/locator_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const HotelApp());
}

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HotelListCubit>(
              create: (context) => sl<HotelListCubit>()..loadHotel()),
          BlocProvider<RoomListCubit>(
              create: (context) => sl<RoomListCubit>()..loadRoom()),
          BlocProvider<ReservListCubit>(
              create: (context) => sl<ReservListCubit>()..loadReserv()),
        ],
        child: MaterialApp(
          theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: AppColors.mainBackgroundColor,
          ),
          routes: {
            '/hotel': (context) => const HotelMainScreen(),
            '/room': (context) => const RoomMainScreen(),
            '/reserv': (context) => const ReservMainScreen(),
            '/paid': (context) => PaidMainScreen(),
          },
          initialRoute: '/hotel',
        ));
  }
}
