import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_bloc.dart';
import 'package:flutter_rtm/utils/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  double screenWidth, screenHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            child: BlocBuilder<NavigationBloc, NavigationStates>(builder: (
                context,
                NavigationStates navigationState,
                ) {
              return navigationState as Widget;
            }),
          ),
          Container(
            height: 85,
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10, right: 20, top: 25),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
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
              height: 28
            )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: primaryColor
        ),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Markaz Haqida',
              style: kTextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w200,
                  size: 12
              ),
            )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos),
              title: Text(
                'Markaz Haqida',
                style: kTextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w200,
                    size: 12
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.image),
              title: Text(
                'Markaz Haqida',
                style: kTextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w200,
                    size: 12
                ),
              )
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.computer),
              title: Text(
                'Markaz Haqida',
                style: kTextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w200,
                    size: 12
                ),
              )
          )
        ],
      ),
    );
  }
}
