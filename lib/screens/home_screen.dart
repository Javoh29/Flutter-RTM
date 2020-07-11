import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rtm/bloc/navigation_bloc.dart';

class HomeScreen extends StatefulWidget with NavigationStates{
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text('HomeScreen'),
      ),
    );
  }
}
