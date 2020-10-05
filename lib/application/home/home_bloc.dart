import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeStarted) {
      yield* _loadAndShow();
    }
  }

  Stream<HomeState> _loadAndShow({
    Function() beforeLoad,
    Function() between,
    Function() afterShow,
  }) async* {
    if (beforeLoad != null) await beforeLoad();
    yield _loadingState;
    if (between != null) await between();
    yield _loadState;
    if (afterShow != null) await afterShow();
  }

  HomeState get _loadingState => HomeLoading();

  HomeState get _loadState => LoadHome();
}
