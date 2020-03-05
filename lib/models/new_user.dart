import 'package:flutter/foundation.dart';

// to work with @required import foundation package
// we use @ required in the constructor to show the data is mandatory
class NewUser{
  String email;
  String phone;
  String password;
  String referCode;

  NewUser({@required this.email, @required this.phone, @required this.password, @required this.referCode});


// this method will be used in notes_service.dart to convert the note from user to a map of String and Json
  Map<String, dynamic>toJson() {
    return {
       "email": email,
      "phone": phone,
      "password": password,
      "referCode": referCode,
    };
  }

}