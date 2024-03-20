import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'reserv_remote_data_source.g.dart';

@RestApi(baseUrl: textApi)
abstract class ReservRemoteDataSource {
  factory ReservRemoteDataSource(Dio dio, {String baseUrl}) =
      _ReservRemoteDataSource;

  @GET('/tasks')
  @Headers(<String, dynamic>{
    'Content-Type': headersType,
    'Custom-Header': headersSet,
  })
  Future<ReservModel> getReserv();
}
