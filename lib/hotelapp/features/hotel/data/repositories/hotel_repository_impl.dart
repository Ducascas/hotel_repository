import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entitites/hotel_entity.dart';
import '../../domain/repositories/hotel_repository.dart';
import '../datasources/remote/hotel_remote_data_source.dart';
import '../models/hotel_model.dart';

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
