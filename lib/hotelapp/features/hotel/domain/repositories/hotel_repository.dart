import 'package:dartz/dartz.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/hotel/hotel.dart';




abstract class HotelRepository {
  Future<Either<Failure, HotelEntity>> getHotels();
}
