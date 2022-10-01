import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tes/models/user_model.dart';

class UserService {
  Future<UserModel> FetchUser() async {
    try {
      Response response;
      var dio = Dio();

      response = await dio.get('https://reqres.in/api/users?page=2');
      print(response.data);
      return userModelFromJson(jsonEncode(response.data));
    } catch (e) {
      throw Exception(e);
    }
  }
}
