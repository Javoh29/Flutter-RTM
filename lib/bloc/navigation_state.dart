import 'package:equatable/equatable.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
  @override
  List<Object> get props => [];
}

class HomePage extends NavigationState {}

class DirectionsPage extends NavigationState {}

class AlbumPage extends NavigationState {}

class SmartPage extends NavigationState {}

class ResidentsPage extends NavigationState {}