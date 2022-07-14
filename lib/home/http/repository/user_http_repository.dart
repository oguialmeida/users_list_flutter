import 'dart:convert';

import 'package:consumir_api/model/user_model.dart';
import 'package:http/http.dart' as http;

import '../../../repository/i_user_repository.dart';

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get(
        Uri.parse('https://6294c63c63b5d108c193a1b1.mockapi.io/api/users'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
