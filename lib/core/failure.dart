abstract class Failure implements Exception {
  final dynamic message;

  Failure([this.message]);

  String get name;

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return name;

    return '$name: $message';
  }
}
