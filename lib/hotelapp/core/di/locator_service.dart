import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

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
