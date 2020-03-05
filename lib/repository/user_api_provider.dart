import 'package:flutter_login_ui/models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


class UserApiProvider {
  final String _baseURL = "http://test.eze-tickets.com/api";
  Dio _dio;
     Future<String> login({
 @required String email,
 @required String password,
 }) async {
 await Future.delayed(Duration(seconds: 1));
 return 'token-info';
 }
 
  }
