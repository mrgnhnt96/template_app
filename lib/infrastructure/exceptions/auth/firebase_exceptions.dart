import 'package:template_mobile/infrastructure/exceptions/i_exception.dart';

class NJOFirebaseException extends IException {
  NJOFirebaseException([String message]) : super(message: message);
}

class DisabledUserException extends IException {
  DisabledUserException([String message]) : super(message: message);
}

class WrongCredentialException extends IException {
  WrongCredentialException([String message]) : super(message: message);
}

class InvalidCredentialException extends IException {
  InvalidCredentialException([String message]) : super(message: message);
}

class InvalidEmailException extends IException {
  InvalidEmailException([String message]) : super(message: message);
}

class WrongPasswordException extends IException {
  WrongPasswordException([String message]) : super(message: message);
}

class NoUserFoundException extends IException {
  NoUserFoundException([String message]) : super(message: message);
}

class EmailAlreadyExistsException extends IException {
  EmailAlreadyExistsException([String message]) : super(message: message);
}
