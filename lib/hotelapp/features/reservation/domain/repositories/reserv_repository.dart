import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entitites/reserv_entity.dart';


abstract class ReservRepository {
  Future<Either<Failure, ReservEntity>> getReserv();
}
