import 'package:flutter/material.dart';
import 'package:hotel_app/hotelapp/hotel_app.dart';
import 'package:hotel_app/hotelapp/core/core.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const HotelApp());
}
