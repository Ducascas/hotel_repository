import 'package:hotel_app/hotelapp/features/features.dart';

const initialRoute = '/hotel';

final appRoutes = {
  '/hotel': (context) => const HotelMainScreen(),
  '/room': (context) => const RoomMainScreen(),
  '/reserv': (context) => const ReservMainScreen(),
  '/paid': (context) => const PaidMainScreen(),
};
