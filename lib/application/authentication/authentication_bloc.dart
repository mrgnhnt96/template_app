import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:template_mobile/domain/user/credentials.model.dart';
import 'package:template_mobile/infrastructure/repositories/auth/auth_entity.dart';
import 'package:template_mobile/infrastructure/repositories/auth/i_auth_repo.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

@singleton
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthRepo authRepo;
  AuthenticationBloc({
    @Named.from(AuthEntity) @required this.authRepo,
  }) : super(AuthenticationInitial());

  Credentials _creds;
  bool hasNoInternetAndSignedIn = false;

  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* autoSignIn();
    } else if (event is Authenticate) {
      _creds = event.creds;
      yield authenticate();
    } else if (event is UnAuthenticate) {
      yield notAuthenticated();
    }
  }

  Stream<AuthenticationState> autoSignIn() async* {
    try {
      try {
        final result = await authRepo.isSignedIn();
        _creds = result;
      } catch (err) {
        // this is to get the creds if there is an error with firebase
        _creds ??= await authRepo.getCredentials();
      } finally {
        if (_creds == null) {
          yield notAuthenticated();
        } else {
          yield authenticate();
        }
      }
    } catch (e) {
      print(e);
      yield AuthNotify(
        title: 'Error',
        message: 'There was an error with logging you in, please try again.',
      );
      yield notAuthenticated();
    }
  }

  AuthenticationState notAuthenticated() {
    authRepo.signOut();
    return NotAuthenticated();
  }

  AuthenticationState authenticate() {
    return Authenticated();
  }
}
