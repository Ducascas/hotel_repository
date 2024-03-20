import 'package:dartz/dartz.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/features.dart';

class RoomRepositoryImpl implements RoomRepository {
  final RoomRemoteDataSource remoteDataSource;

  final NetworkInfo networkInfo;

  RoomRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, RoomsListEntity>> getRooms() async {
    return await _getRooms(() {
      return remoteDataSource.getRooms();
    });
  }

  Future<Either<Failure, RoomsListModel>> _getRooms(
      Future<RoomsListModel> Function() getRooms) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRooms = await getRooms();
        return Right(remoteRooms);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
