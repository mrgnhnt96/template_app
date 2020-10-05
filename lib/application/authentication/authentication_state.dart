part of 'authentication_bloc.dart';

@immutable
abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  const AuthenticationInitial();

  @override
  List<Object> get props => [];
}

class Authenticated extends AuthenticationState {
  const Authenticated();

  @override
  List<Object> get props => [];
}

class NotAuthenticated extends AuthenticationState {
  const NotAuthenticated();

  @override
  List<Object> get props => [];
}

class AuthNotify extends AuthenticationState {
  final String message;
  final String title;
  const AuthNotify({
    @required this.message,
    @required this.title,
  });

  @override
  List<Object> get props => [];
}
