import 'package:flutter/material.dart';

class DirectionsScreen extends StatefulWidget{
  @override
  _DirectionsScreenState createState() => _DirectionsScreenState();
}

class _DirectionsScreenState extends State<DirectionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text('Directions Screen'),
      ),
    );
  }
}
