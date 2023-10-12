// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';

import '../../domain/entitites/room_entity.dart';

part 'room_model.g.dart';

@JsonSerializable()
class RoomModel extends RoomEntity {
  @override
  @JsonKey(name: 'price_per')
  final String? pricePer;

  @override
  @JsonKey(name: 'image_urls')
  final List<String>? imageUrls;

  RoomModel(
      {required int? id,
      required String? name,
      required int? price,
      required this.pricePer,
      required List<String>? peculiarities,
      required this.imageUrls})
      : super(
            id: id,
            name: name,
            price: price,
            pricePer: pricePer,
            peculiarities: peculiarities,
            imageUrls: imageUrls);

  factory RoomModel.fromJson(Map<String, dynamic> json) =>
      _$RoomModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoomModelToJson(this);
}
