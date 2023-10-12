import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../../core/error/exception.dart';
import '../../models/reserv_model.dart';

abstract class ReservRemoteDataSource {
  Future<ReservModel> getReserv();
}

class ReservRemoteDataSourceImpl implements ReservRemoteDataSource {
  final http.Client client;

  ReservRemoteDataSourceImpl({required this.client});

  @override
  Future<ReservModel> getReserv() async {
    String url = 'https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8';
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final reserv = jsonDecode(response.body);
      return ReservModel.fromJson(reserv);
    } else {
      throw ServerException();
    }
  }
}
