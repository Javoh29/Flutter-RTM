
import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigation_event.dart';
import 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState>{
  @override
  NavigationState get initialState => HomePage();

  @override
  Stream<NavigationState> mapEventToState(event) async* {
    if (event is AppStarted || event is HomeClickedEvent) {
      yield HomePage();
    } else if (event is DirectionsClickedEvent) {
      yield DirectionsPage();
    } else if (event is AlbumClickedEvent) {
      yield AlbumPage();
    } else if (event is SmartClickedEvent) {
      yield SmartPage();
    } else if (event is ResidentsClickedEvent) {
      yield ResidentsPage();
    }
  }
}
