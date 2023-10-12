import 'package:dartz/dartz.dart';
import 'package:hotel_app/hotelapp/core/error/failure.dart';

abstract class UseCase<Type> {
  Future<Either<Failure, Type>> call();
}
