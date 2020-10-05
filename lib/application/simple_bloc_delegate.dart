import 'package:bloc/bloc.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocDelegate extends BlocObserver {
  final bool verbose = false;

  @override
  void onEvent(Bloc bloc, Object event) {
    super.onEvent(bloc, event);
    Fimber.d(event.runtimeType.toString());
    if (verbose) {
      Fimber.d(event.toString());
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    Fimber.d(
        'Transition { event: ${transition.event.runtimeType.toString()} currentState: ${transition.currentState.runtimeType.toString()} nextState: ${transition.nextState.runtimeType.toString()}}');
  }

  @override
  void onError(Cubit bloc, Object error, StackTrace stacktrace) {
    super.onError(bloc, error, stacktrace);
    Fimber.d(error.toString());
  }
}
