import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app_constant.dart';
import '../../../../core/error/failure.dart';
import '../../domain/usecases/get_rooms.dart';
import 'room_state.dart';

class RoomListCubit extends Cubit<RoomState> {
  final GetRooms getRooms;

  RoomListCubit({required this.getRooms}) : super(RoomEmpty());

  void loadRoom() async {
    if (state is RoomLoading) return;

    emit(RoomLoading());

    final failureOrRoom = await getRooms();

    failureOrRoom
        .fold((error) => emit(RoomError(message: _mapFailureToMessage(error))),
            (rooms) {
      emit(RoomLoaded(rooms));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return AppConstants.SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return AppConstants.CACHED_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
