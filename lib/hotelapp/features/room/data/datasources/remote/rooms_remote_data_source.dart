import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'rooms_remote_data_source.g.dart';

@RestApi(baseUrl: textApi)
abstract class RoomRemoteDataSource {
  factory RoomRemoteDataSource(Dio dio, {String baseUrl}) =
      _RoomRemoteDataSource;

  @GET('')
  @Headers(<String, dynamic>{
    'Content-Type': headersType,
    'Custom-Header': headersSet,
  })
  Future<RoomsListModel> getRooms();
}
