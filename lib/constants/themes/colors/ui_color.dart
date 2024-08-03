part of 'app_color.dart';

abstract class _UIColor {
  final Color white = const Color(0xFFffffff);
  final Color gray = const Color(0xFFe6e6e6);
  final Color success = const Color(0xFF00ff33);
  final Color loading = const Color(0xFFffb300);
  final Color error = const Color(0xFFff3300);

  Color get formBackground;
  Color get shimmerBase;
  Color get shimmerHighlight;
}

class LightUIColor extends _UIColor {
  @override
  Color get formBackground => const Color(0xFFf7f2f2);

  @override
  Color get shimmerBase => const Color(0xFFeeeeee);

  @override
  Color get shimmerHighlight => const Color(0xFFffffff);
}

class DarkUIColor extends _UIColor {
  @override
  Color get formBackground => const Color(0xFF201a17);

  @override
  Color get shimmerBase => const Color(0xFF222222);

  @override
  Color get shimmerHighlight => const Color(0xFF333333);
}
