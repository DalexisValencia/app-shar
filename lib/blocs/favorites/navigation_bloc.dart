import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NavigationEvent {
  const NavigationEvent();

  @override
  List<Object> get props => [];
}

class GoToTab extends NavigationEvent {
  final int? tabIndex;
  GoToTab({this.tabIndex});
}


abstract class NavigationState {
  const NavigationState();

  @override
  List<Object> get props => [];
}

class NavigationInitial extends NavigationState {
  final int? tabIndex;

  NavigationInitial({
    this.tabIndex = 0,
  });

  @override
  List<Object> get props => [tabIndex!];

  @override
  String toString() => 'NavigationInitial {props: products: $tabIndex';
}

class NavigationFetched extends NavigationState {
  final int? tabIndex;

  NavigationFetched({
    this.tabIndex,
  });

  @override
  List<Object> get props => [tabIndex!];

  @override
  String toString() => 'NavigationFetched {props: products: $tabIndex,}';
}

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc()
      : super(
          NavigationInitial(tabIndex: 0),
        ) {
    on<GoToTab>(
      (event, emit) {
        emit(
          NavigationFetched(
            tabIndex: event.tabIndex,
          ),
        );
      },
    );
  }
}
