import 'package:flutter/material.dart';
import 'package:flutter_login_ui/bloc/login_bloc_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final bloc =Provider.of<LoginBloc>(context);
 return Scaffold(
 appBar: AppBar(title: Text('HomeScreen'),),
 body: Center(
 child: RaisedButton(
 onPressed: bloc.logoutUser,
 child: Text('Logout', style: TextStyle(color: Colors.white),),
 color: Colors.blue,
 ),
 ),
 );
 }
}