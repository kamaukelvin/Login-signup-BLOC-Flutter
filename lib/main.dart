import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screens/home.dart';
import 'package:flutter_login_ui/screens/login_screen.dart';
import 'bloc/login_bloc.dart';
import 'package:provider/provider.dart';
import 'bloc/authorization_bloc.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    authBloc.restoreSession();
    return MultiProvider(
      providers: [
        Provider(create:(context)=>LoginBloc()),
        ChangeNotifierProvider(create:(context)=>LoginBloc())
      ],
  
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: createContent(),
      ),
    );
  }


  createContent() {
 return StreamBuilder<bool> (
 stream: authBloc.isSessionValid,
 builder: (context, AsyncSnapshot<bool> snapshot){
 if (snapshot.hasData && snapshot.data) {
 return Home();
 }
 return LoginScreen();
 });
}
}
