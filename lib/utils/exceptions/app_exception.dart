abstract class AppException implements Exception {
  const AppException({
    required this.message,
    this.display,
  });

  final String message;
  final String? display;

  @override
  String toString() => '$runtimeType: $message';

  String indicate() => display ?? message;
}
