import 'package:dartz/dartz.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/hotel/hotel.dart';



class GetHotels extends UseCase<HotelEntity> {
  final HotelRepository hotelRepository;

  GetHotels(this.hotelRepository);

  @override
  Future<Either<Failure, HotelEntity>> call() async {
    return await hotelRepository.getHotels();
  }
}
