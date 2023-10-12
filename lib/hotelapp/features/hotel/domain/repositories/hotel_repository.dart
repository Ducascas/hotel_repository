import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entitites/hotel_entity.dart';


abstract class HotelRepository {
  Future<Either<Failure, HotelEntity>> getHotels();
}
