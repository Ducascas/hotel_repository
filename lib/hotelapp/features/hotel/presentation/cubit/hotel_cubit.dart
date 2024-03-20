import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/core/core.dart';
import 'package:hotel_app/hotelapp/features/hotel/hotel.dart';

part 'hotel_state.dart';

class HotelListCubit extends Cubit<HotelState> {
  final GetHotels getHotels;

  HotelListCubit({required this.getHotels}) : super(HotelEmpty());

  void loadHotel() async {
    if (state is HotelLoading) return;

    emit(HotelLoading());

    final failureOrHotel = await getHotels();

    failureOrHotel
        .fold((error) => emit(HotelError(message: _mapFailureToMessage(error))),
            (hotels) {
      emit(HotelLoaded(hotels));
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
