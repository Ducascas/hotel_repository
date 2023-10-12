import '../../domain/entitites/rooms_list_entity.dart';
import 'room_model.dart';

import 'package:json_annotation/json_annotation.dart';

part 'rooms_list_model.g.dart';

@JsonSerializable()
class RoomsListModel extends RoomsListEntity {
  @override
  final List<RoomModel>? rooms;

  RoomsListModel({required this.rooms}) : super(rooms: rooms);

  factory RoomsListModel.fromJson(Map<String, dynamic> json) =>
      _$RoomsListModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomsListModelToJson(this);
}
