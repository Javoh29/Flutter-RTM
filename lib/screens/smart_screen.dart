import 'package:flutter/material.dart';

class SmartScreen extends StatefulWidget{
  @override
  _SmartScreenState createState() => _SmartScreenState();
}

class _SmartScreenState extends State<SmartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Text('Smart Screen'),
      ),
    );
  }
}
