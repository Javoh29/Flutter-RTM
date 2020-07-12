import 'package:equatable/equatable.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();
  @override
  List<Object> get props => null;
}
class AppStarted extends NavigationEvent {}
class HomeClickedEvent extends NavigationEvent {}
class DirectionsClickedEvent extends NavigationEvent {}
class AlbumClickedEvent extends NavigationEvent {}
class SmartClickedEvent extends NavigationEvent {}