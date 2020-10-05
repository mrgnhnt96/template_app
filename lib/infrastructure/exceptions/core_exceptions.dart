class UserCancelledException implements Exception {
  final String message;
  const UserCancelledException([this.message = 'The user cancelled during sign in process']);
  String toString() => '$message';
}

class NoNetworkException implements Exception {
  final String message;
  const NoNetworkException([this.message = 'The Internet connection appears to be offline.']);
  String toString() => '$message';
}
