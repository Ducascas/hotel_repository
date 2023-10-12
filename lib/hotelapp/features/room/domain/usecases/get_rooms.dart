import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entitites/rooms_list_entity.dart';
import '../repositories/room_repository.dart';

class GetRooms extends UseCase<RoomsListEntity> {
  final RoomRepository roomRepository;

  GetRooms(this.roomRepository);

  @override
  Future<Either<Failure, RoomsListEntity>> call() async {
    return await roomRepository.getRooms();
  }
}
