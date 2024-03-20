// ignore_for_file: overridden_fields

import 'package:hotel_app/hotelapp/features/features.dart';
import 'package:json_annotation/json_annotation.dart';

import 'hotel_desc_model.dart';

part 'hotel_model.g.dart';

@JsonSerializable()
class HotelModel extends HotelEntity {
  @override
  @JsonKey(name: 'minimal_price')
  final int? minimalPrice;

  @override
  @JsonKey(name: 'price_for_it')
  final String? priceForIt;

  @override
  @JsonKey(name: 'rating_name')
  final String? ratingName;

  @override
  @JsonKey(name: 'image_urls')
  final List<String>? imageUrls;

  @override
  @JsonKey(name: 'about_the_hotel')
  final HotelDescModel? hotelDescription;

  HotelModel(
      {required int? id,
      required String? name,
      required String? adress,
      required this.minimalPrice,
      required this.priceForIt,
      required int? rating,
      required this.ratingName,
      required this.imageUrls,
      required this.hotelDescription})
      : super(
            id: id,
            name: name,
            adress: adress,
            minimalPrice: minimalPrice,
            priceForIt: priceForIt,
            rating: rating,
            ratingName: ratingName,
            imageUrls: imageUrls,
            hotelDescription: hotelDescription);

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);

  Map<String, dynamic> toJson() => _$HotelModelToJson(this);
}
