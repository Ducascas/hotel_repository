import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/hotelapp/common/common.dart';
import 'package:hotel_app/hotelapp/features/room/room.dart';



class RoomListScreen extends StatelessWidget {
  final String? hotelName;

  const RoomListScreen({super.key, this.hotelName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomListCubit, RoomState>(builder: (context, state) {
      List<RoomEntity>? room;

      if (state is RoomLoading) {
        return AppSettings.loadingIndicator;
      } else if (state is RoomLoaded) {
        room = state.rooms.rooms;
      } else if (state is RoomError) {
        return Text(
          state.message,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        );
      }

      final int roomsLength = room?.length ?? 0;

      return ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(height: 44, color: AppColors.cellBackgroundColor),
          RoomNavigatorBar(hotelName: hotelName),
          const SizedBox(height: 8),
          ...Iterable<int>.generate(roomsLength).map(
            (int index) => _roomInfo(room, index),
          )
        ],
      );
    });
  }

  Column _roomInfo(List<RoomEntity>? rooms, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // width: 375,
          // height: 539,
          decoration: AppSettings.boxCircularDecoration,
          padding:
              const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoomImageWidget(room: rooms?[index]),
              const SizedBox(height: 8),
              RoomNameWidget(room: rooms?[index]),
              const SizedBox(height: 8),
              RoomPeculiarities(room: rooms?[index]),
              const SizedBox(height: 8),
              RoomDetailButton(),
              const SizedBox(height: 16),
              RoomPriceWidget(room: rooms?[index]),
              // const SizedBox(height: 16),
              RoomButton()
            ],
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}
