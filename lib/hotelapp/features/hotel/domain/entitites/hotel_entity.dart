import 'hotel_description_entity.dart';

class HotelEntity {
  final int? id;
  final String? name;
  final String? adress;
  final int? minimalPrice;
  final String? priceForIt;
  final int? rating;
  final String? ratingName;
  final List<String>? imageUrls;
  final HotelDescription? hotelDescription;

  const HotelEntity(
      {required this.id,
      required this.name,
      required this.adress,
      required this.minimalPrice,
      required this.priceForIt,
      required this.rating,
      required this.ratingName,
      required this.imageUrls,
      required this.hotelDescription});
}
