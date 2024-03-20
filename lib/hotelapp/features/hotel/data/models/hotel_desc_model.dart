import 'package:hotel_app/hotelapp/features/features.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hotel_desc_model.g.dart';

@JsonSerializable()
class HotelDescModel extends HotelDescription {
  HotelDescModel({
    required String? description,
    required List<String>? peculiarities,
  }) : super(
          description: description,
          peculiarities: peculiarities,
        );

  factory HotelDescModel.fromJson(Map<String, dynamic> json) =>
      _$HotelDescModelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelDescModelToJson(this);
}
