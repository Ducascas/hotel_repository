import 'package:dartz/dartz.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/platform/network_info.dart';
import '../../domain/entitites/reserv_entity.dart';
import '../../domain/repositories/reserv_repository.dart';
import '../datasources/remote/reserv_remote_data_source.dart';
import '../models/reserv_model.dart';

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
