import './nested_user.dart';

class User{
  String accessToken;
  NestedUser nestedUser;

 User({this.accessToken, this.nestedUser});

  User.fromJson(Map<String, dynamic> json) 
    :accessToken = json['access_token'],
    nestedUser = NestedUser.fromJson(json['nestedUser']);
  }








