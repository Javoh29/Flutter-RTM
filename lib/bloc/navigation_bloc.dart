
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rtm/screens/album_screen.dart';
import 'package:flutter_rtm/screens/directions_screen.dart';
import 'package:flutter_rtm/screens/home_screen.dart';
import 'package:flutter_rtm/screens/smart_screen.dart';

enum NavigationEvents {
  HomeClickedEvent,
  DirectionsClickedEvent,
  AlbumClickedEvent,
  SmartClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates>{

  NavigationBloc();

  @override
  NavigationStates get initialState => HomeScreen();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch(event){
      case NavigationEvents.HomeClickedEvent:
        yield HomeScreen();
        break;
      case NavigationEvents.DirectionsClickedEvent:
        yield DirectionsScreen();
        break;
      case NavigationEvents.AlbumClickedEvent:
        yield AlbumScreen();
        break;
      case NavigationEvents.SmartClickedEvent:
        yield SmartScreen();
        break;
    }
  }

}