import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../../core/error/exception.dart';
import '../../models/rooms_list_model.dart';

abstract class RoomRemoteDataSource {
  Future<RoomsListModel> getRooms();
}

class RoomRemoteDataSourceImpl implements RoomRemoteDataSource {
  final http.Client client;

  RoomRemoteDataSourceImpl({required this.client});

  @override
  Future<RoomsListModel> getRooms() async {
    String url = 'https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd';
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 200) {
      final rooms = jsonDecode(response.body);
      return RoomsListModel.fromJson(rooms);
    } else {
      throw ServerException();
    }
  }
}
