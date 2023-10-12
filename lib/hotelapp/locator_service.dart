import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:hotel_app/hotelapp/core/platform/network_info.dart';
import 'package:hotel_app/hotelapp/features/hotel/data/datasources/remote/hotel_remote_data_source.dart';
import 'package:hotel_app/hotelapp/features/hotel/data/repositories/hotel_repository_impl.dart';
import 'package:hotel_app/hotelapp/features/hotel/domain/repositories/hotel_repository.dart';
import 'package:hotel_app/hotelapp/features/hotel/domain/usecases/get_hotels.dart';
import 'package:hotel_app/hotelapp/features/hotel/presentation/cubit/hotel_cubit.dart';
import 'package:hotel_app/hotelapp/features/room/data/repositories/room_repository_impl.dart';
import 'package:hotel_app/hotelapp/features/room/domain/repositories/room_repository.dart';
import 'package:hotel_app/hotelapp/features/room/domain/usecases/get_rooms.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'features/reservation/data/datasources/remote/reserv_remote_data_source.dart';
import 'features/reservation/data/repositories/reserv_repository_impl.dart';
import 'features/reservation/domain/repositories/reserv_repository.dart';
import 'features/reservation/domain/usecases/get_reserv.dart';
import 'features/reservation/presentation/cubit/reserv_cubit.dart';
import 'features/room/data/datasources/remote/rooms_remote_data_source.dart';
import 'features/room/presentation/cubit/room_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Cubit
  sl.registerFactory(() => HotelListCubit(getHotels: sl<GetHotels>()));
  sl.registerFactory(() => RoomListCubit(getRooms: sl<GetRooms>()));
  sl.registerFactory(() => ReservListCubit(getReserv: sl<GetReserv>()));

  //UseCases
  sl.registerLazySingleton(() => GetHotels(sl()));
  sl.registerLazySingleton(() => GetRooms(sl()));
  sl.registerLazySingleton(() => GetReserv(sl()));

  //Repository
  sl.registerLazySingleton<HotelRepository>(
      () => HotelRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<HotelRemoteDataSource>(
      () => HotelRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<RoomRepository>(
      () => RoomRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<RoomRemoteDataSource>(
      () => RoomRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<ReservRepository>(
      () => ReservRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<ReservRemoteDataSource>(
      () => ReservRemoteDataSourceImpl(client: sl()));

  //Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
