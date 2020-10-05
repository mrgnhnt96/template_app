part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class AppStarted extends AuthenticationEvent {
  const AppStarted();

  @override
  List<Object> get props => [];
}

class Authenticate extends AuthenticationEvent {
  final Credentials creds;
  const Authenticate(this.creds);

  @override
  List<Object> get props => [];
}

class UnAuthenticate extends AuthenticationEvent {
  const UnAuthenticate();

  @override
  List<Object> get props => [];
}
