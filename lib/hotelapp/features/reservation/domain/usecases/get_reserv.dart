import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entitites/reserv_entity.dart';
import '../repositories/reserv_repository.dart';

class GetReserv extends UseCase<ReservEntity> {
  final ReservRepository reservRepository;

  GetReserv(this.reservRepository);

  @override
  Future<Either<Failure, ReservEntity>> call() async {
    return await reservRepository.getReserv();
  }
}
