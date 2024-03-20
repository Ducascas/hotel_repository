part of 'reserv_cubit.dart';

abstract class ReservState extends Equatable {
  const ReservState();

  @override
  List<Object> get props => [];
}

class ReservEmpty extends ReservState {
  @override
  List<Object> get props => [];
}

class ReservLoading extends ReservState {
  @override
  List<Object> get props => [];
}

class ReservLoaded extends ReservState {
  final ReservEntity reserv;

  const ReservLoaded(this.reserv);

  @override
  List<Object> get props => [reserv];
}

class ReservError extends ReservState {
  final String message;

  const ReservError({required this.message});

  @override
  List<Object> get props => [message];
}
