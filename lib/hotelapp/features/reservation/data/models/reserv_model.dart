// ignore_for_file: overridden_fields

import 'package:hotel_app/hotelapp/features/features.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reserv_model.g.dart';

@JsonSerializable()
class ReservModel extends ReservEntity {
  @override
  @JsonKey(name: 'hotel_name')
  final String? hotelName;

  @override
  @JsonKey(name: 'hotel_adress')
  final String? hotelAdress;

  @override
  @JsonKey(name: 'rating_name')
  final String? ratingName;

  @override
  @JsonKey(name: 'arrival_country')
  final String? arrivalCountry;

  @override
  @JsonKey(name: 'tour_date_start')
  final String? tourDateStart;

  @override
  @JsonKey(name: 'tour_date_stop')
  final String? tourDateStop;

  @override
  @JsonKey(name: 'number_of_nights')
  final int? numberOfNights;

  @override
  @JsonKey(name: 'tour_price')
  final int? tourPrice;

  @override
  @JsonKey(name: 'fuel_charge')
  final int? fuelCharge;

  @override
  @JsonKey(name: 'service_charge')
  final int? serviceCharge;

  ReservModel(
      {required int? id,
      required this.hotelName,
      required this.hotelAdress,
      required int? horating,
      required this.ratingName,
      required String? departure,
      required this.arrivalCountry,
      required this.tourDateStart,
      required this.tourDateStop,
      required this.numberOfNights,
      required String? room,
      required String? nutrition,
      required this.tourPrice,
      required this.fuelCharge,
      required this.serviceCharge})
      : super(
            id: id,
            hotelName: hotelName,
            hotelAdress: hotelAdress,
            horating: horating,
            ratingName: ratingName,
            departure: departure,
            arrivalCountry: arrivalCountry,
            tourDateStart: tourDateStart,
            tourDateStop: tourDateStop,
            numberOfNights: numberOfNights,
            room: room,
            nutrition: nutrition,
            tourPrice: tourPrice,
            fuelCharge: fuelCharge,
            serviceCharge: serviceCharge);

  factory ReservModel.fromJson(Map<String, dynamic> json) =>
      _$ReservModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReservModelToJson(this);
}
