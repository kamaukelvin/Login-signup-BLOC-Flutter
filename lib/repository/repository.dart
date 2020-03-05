import 'package:flutter_login_ui/models/api_response.dart';
import 'package:flutter_login_ui/repository/user_api_provider.dart';

class UserRepository{
  UserApiProvider _apiProvider = UserApiProvider();

  Future<String> login(String email, String password)=>
  _apiProvider.login(email:email, password:password);
  }
