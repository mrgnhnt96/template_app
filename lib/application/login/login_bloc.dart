import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginStarted) {
      yield* _loadAndShow();
    }
  }

  Stream<LoginState> _loadAndShow({
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

  LoginState get _loadingState => LoginLoading();

  LoginState get _loadState => LoadLogin();
}
