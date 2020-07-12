import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rtm/screens/app_screen.dart';

import 'bloc/navigation_bloc.dart';
import 'bloc/navigation_event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
      create: (_) => NavigationBloc()..add(AppStarted()),
      child: AppScreen(),
    );
  }
}