import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entitites/rooms_list_entity.dart';

abstract class RoomRepository {
  Future<Either<Failure, RoomsListEntity>> getRooms();
}
