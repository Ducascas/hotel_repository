import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/reservation/reservation.dart';

part 'reserv_state.dart';

class ReservListCubit extends Cubit<ReservState> {
  final GetReserv getReserv;

  ReservListCubit({required this.getReserv}) : super(ReservEmpty());

  void loadReserv() async {
    if (state is ReservLoading) return;

    emit(ReservLoading());

    final failureOrReserv = await getReserv();

    failureOrReserv.fold(
        (error) => emit(ReservError(message: _mapFailureToMessage(error))),
        (reserv) {
      emit(ReservLoaded(reserv));
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
