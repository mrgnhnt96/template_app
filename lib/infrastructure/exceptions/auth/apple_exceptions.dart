import 'package:template_mobile/infrastructure/exceptions/i_exception.dart';

class AppleException extends IException {
  AppleException([String message]) : super(message: message);
}

class AppleUnknownException extends IException {
  AppleUnknownException([String message]) : super(message: message);
}

class AppleFailedException extends IException {
  AppleFailedException([String message]) : super(message: message);
}

class AppleInvalidResponseException extends IException {
  AppleInvalidResponseException([String message]) : super(message: message);
}

class AppleNotHandledException extends IException {
  AppleNotHandledException([String message]) : super(message: message);
}
