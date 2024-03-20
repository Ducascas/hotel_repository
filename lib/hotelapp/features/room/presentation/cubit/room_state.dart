part of 'room_cubit.dart';

abstract class RoomState extends Equatable {
  const RoomState();

  @override
  List<Object> get props => [];
}

class RoomEmpty extends RoomState {
  @override
  List<Object> get props => [];
}

class RoomLoading extends RoomState {
  @override
  List<Object> get props => [];
}

class RoomLoaded extends RoomState {
  final RoomsListEntity rooms;

  const RoomLoaded(this.rooms);

  @override
  List<Object> get props => [rooms];
}

class RoomError extends RoomState {
  final String message;

  const RoomError({required this.message});

  @override
  List<Object> get props => [message];
}
