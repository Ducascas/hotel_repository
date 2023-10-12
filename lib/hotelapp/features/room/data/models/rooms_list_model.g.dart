// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rooms_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomsListModel _$RoomsListModelFromJson(Map<String, dynamic> json) =>
    RoomsListModel(
      rooms: (json['rooms'] as List<dynamic>?)
          ?.map((e) => RoomModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomsListModelToJson(RoomsListModel instance) =>
    <String, dynamic>{
      'rooms': instance.rooms,
    };
