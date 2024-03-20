import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

final appBlocProviders = [
  BlocProvider<HotelListCubit>(
    create: (context) => sl<HotelListCubit>()..loadHotel(),
  ),
  BlocProvider<RoomListCubit>(
    create: (context) => sl<RoomListCubit>()..loadRoom(),
  ),
  BlocProvider<ReservListCubit>(
    create: (context) => sl<ReservListCubit>()..loadReserv(),
  ),
];
