// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_desc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotelDescModel _$HotelDescModelFromJson(Map<String, dynamic> json) =>
    HotelDescModel(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$HotelDescModelToJson(HotelDescModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };