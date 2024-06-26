import 'package:dartz/dartz.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class ReservRepositoryImpl implements ReservRepository {
  final ReservRemoteDataSource remoteDataSource;

  final NetworkInfo networkInfo;

  ReservRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, ReservEntity>> getReserv() async {
    return await _getReserv(() {
      return remoteDataSource.getReserv();
    });
  }

  Future<Either<Failure, ReservModel>> _getReserv(
      Future<ReservModel> Function() getReserv) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteReserv = await getReserv();
        return Right(remoteReserv);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
