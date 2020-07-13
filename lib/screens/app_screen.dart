import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_event.dart';
import 'package:flutter_rtm/bloc/navigation_state.dart';
import 'package:flutter_rtm/screens/residents_screen.dart';
import 'package:flutter_rtm/screens/smart_screen.dart';

import 'album_screen.dart';
import 'directions_screen.dart';
import 'home_screen.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter RTM',
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffEEF5FF),
          primaryColor: Color(0xff00A85A),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily:'Montserrat'
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: BlocBuilder<NavigationBloc, NavigationState>(
                builder: (_, state) {
                  if (state is HomePage) {
                    return HomeScreen();
                  } else if (state is DirectionsPage) {
                    return DirectionsScreen();
                  } else if (state is AlbumPage) {
                    return AlbumScreen();
                  } else if (state is SmartPage) {
                    return SmartScreen();
                  } else if (state is ResidentsPage) {
                    return ResidentsScreen();
                  } else {
                    return Scaffold(
                      body: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            Container(
              height: 90,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(40, 30, 40, 10),
              decoration: BoxDecoration(
                color: Color(0xff00A85A),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 3),
                    blurRadius: 10,
                  )
                ],
              ),
              child: Image(
                image: AssetImage('images/banner.png'),
              )
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.white,
          height: 60,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
            switch(index){
              case 0: BlocProvider.of<NavigationBloc>(context).add(
                HomeClickedEvent(),
              ); break;
              case 1: BlocProvider.of<NavigationBloc>(context).add(
                DirectionsClickedEvent(),
              ); break;
              case 2: BlocProvider.of<NavigationBloc>(context).add(
                AlbumClickedEvent(),
              ); break;
              case 3: BlocProvider.of<NavigationBloc>(context).add(
                SmartClickedEvent(),
              ); break;
            }
          },
          items: <Widget>[
            Image(
              image: AssetImage('images/ic_home.png'),
              height: 25,
              width: 25,
            ),
            Image(
              image: AssetImage('images/ic_directions.png'),
              height: 25,
              width: 25,
            ),
            Image(
              image: AssetImage('images/ic_photos.png'),
              height: 25,
              width: 25,
            ),
            Image(
              image: AssetImage('images/ic_smart.png'),
              height: 25,
              width: 25,
            )
          ],
        ),
      )
    );
  }
}
