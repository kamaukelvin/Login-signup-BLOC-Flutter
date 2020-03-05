import 'package:flutter_login_ui/screens/home.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';
import '../utilities/strings.dart';
import '../repository/repository.dart';
import '../repository/validators.dart';
import 'package:flutter/material.dart';

import 'authorization_bloc.dart';


class LoginBloc extends ChangeNotifier with Validators{

  // declare all constants

  final _repository = UserRepository();
  final emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();
  final PublishSubject _loading = PublishSubject<bool>();

  // add data to the stream

  Stream<String> get email => emailController.stream.transform(emailValidator);

  Stream<String> get password => _passwordController.stream.transform(passwordValidator);

  Stream<bool> get loading => _loading.stream;

  Stream<bool> get submitCheck =>
      Rx.combineLatest2(email, password, (email, password) => true);


  // String get emailAddress => _email.value;

  // Change data (OnChange Handlers)
  
  Function(String) get changeEmail => emailController.sink.add;

  Function(String) get changePassword => _passwordController.sink.add;


  

  // Methods
 submit(context) {
  final validEmail = emailController.value;
  final validPassword = _passwordController.value;
  _loading.sink.add(true);

  login(validEmail, validPassword);
      // Navigator.of(context)
      //     .push(MaterialPageRoute(builder: (_)=>Home()));
      // print('submitted with email: ${emailController.value} and password ${_passwordController.value}');
  }

login(String email, String password) async {
 String token = await _repository.login(email, password);
 _loading.sink.add(false);
 authBloc.openSession(token);
 }

logoutUser() {
 authBloc.closeSession();
 }
  // close all instances

  void dispose() {
    emailController.close();
    _passwordController.close();
    _loading.close();
  }

}
