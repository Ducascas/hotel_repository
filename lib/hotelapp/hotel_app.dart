import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/hotelapp/common/common.dart';

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: appBlocProviders,
      child: MaterialApp(
        theme: theme,
        routes: appRoutes,
        initialRoute: initialRoute,
      ),
    );
  }
}
