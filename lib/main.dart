import 'package:flutter/material.dart';
import 'package:flutter_rtm/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffEEF5FF),
        primaryColor: Color(0xff00A85A),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily:'Montserrat'
      ),
      home: MainScreen(),
    );
  }
}