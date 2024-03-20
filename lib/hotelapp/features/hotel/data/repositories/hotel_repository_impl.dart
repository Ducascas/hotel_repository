import 'package:dartz/dartz.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class HotelRepositoryImpl implements HotelRepository {
  final HotelRemoteDataSource remoteDataSource;

  final NetworkInfo networkInfo;

  HotelRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, HotelEntity>> getHotels() async {
    return await _getHotels(() {
      return remoteDataSource.getHotels();
    });
  }

  Future<Either<Failure, HotelModel>> _getHotels(
      Future<HotelModel> Function() getHotels) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteHotels = await getHotels();
        return Right(remoteHotels);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
