import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entitites/hotel_entity.dart';
import '../repositories/hotel_repository.dart';

class GetHotels extends UseCase<HotelEntity> {
  final HotelRepository hotelRepository;

  GetHotels(this.hotelRepository);

  @override
  Future<Either<Failure, HotelEntity>> call() async {
    return await hotelRepository.getHotels();
  }
}
