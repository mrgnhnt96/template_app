class IException implements Exception {
  final String message;
  IException({
    this.message: 'An error has occurred',
  });
  String toString() => '$message';
  String stackTrace() => '${StackTrace.current}';
}
