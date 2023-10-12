import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entitites/rooms_list_entity.dart';
import '../../domain/repositories/room_repository.dart';
import '../datasources/remote/rooms_remote_data_source.dart';
import '../models/rooms_list_model.dart';

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
