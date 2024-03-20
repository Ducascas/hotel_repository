import 'package:dio/dio.dart' hide Headers;
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/features.dart';
import 'package:retrofit/retrofit.dart';

part 'hotel_remote_data_source.g.dart';

@RestApi(baseUrl: textApi)
abstract class HotelRemoteDataSource {
  factory HotelRemoteDataSource(Dio dio, {String baseUrl}) =
      _HotelRemoteDataSource;

  @GET('')
  @Headers(<String, dynamic>{
    'Content-Type': headersType,
    'Custom-Header': headersSet,
  })
  Future<HotelModel> getHotels();
}
