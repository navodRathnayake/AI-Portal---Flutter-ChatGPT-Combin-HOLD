part of 'route_bloc.dart';

@immutable
abstract class RouteEvent {}

class _RouteChangeEvent extends RouteEvent {
  final RouteStatus status;
  _RouteChangeEvent({required this.status});
}
