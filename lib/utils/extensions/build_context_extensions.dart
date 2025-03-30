import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:scenarioshelf/constants/themes/app_size.dart';
import 'package:scenarioshelf/views/components/notifications/status_banner/status_banner.dart';

extension BuildContextExtention on BuildContext {
  static OverlayEntry? _currentEntry;

  void showStatusBanner(
    StatusBanner banner, {
    Duration? displayDuration,
  }) {
    final overlay = Overlay.of(this);

    _currentEntry?.remove();
    _currentEntry = null;

    late OverlayEntry entry;
    entry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: MarginSize.doubleLarge,
          left: MarginSize.medium,
          right: MarginSize.medium,
          child: Material(
            color: Colors.transparent,
            child: _AnimatedStatusBanner(
              banner: banner,
              duration: displayDuration,
              onDismiss: () {
                if (_currentEntry == entry) {
                  _currentEntry = null;
                }
                entry.remove();
              },
            ),
          ),
        );
      },
    );

    overlay.insert(entry);
    _currentEntry = entry;
  }

  void removeStatusBanner() {
    _currentEntry?.remove();
    _currentEntry = null;
  }
}

class _AnimatedStatusBanner extends HookWidget {
  const _AnimatedStatusBanner({
    required this.banner,
    required this.onDismiss,
    this.duration,
  });

  final StatusBanner banner;
  final VoidCallback onDismiss;
  final Duration? duration;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    final animation = useMemoized(
      () => Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut)),
      [controller],
    );

    useEffect(
      () {
        controller.forward();

        if (duration != null) {
          final timer = Future.delayed(duration!, () {
            controller.reverse().then((_) => onDismiss());
          });

          return timer.ignore;
        }

        return null;
      },
      [controller],
    );

    return SlideTransition(
      position: animation,
      child: Dismissible(
        key: ValueKey(banner.hashCode),
        direction: DismissDirection.up,
        onDismissed: (_) => onDismiss(),
        child: StatusBanner(
          content: banner.content,
          leading: banner.leading,
          actions: banner.actions,
          showCloseIcon: banner.showCloseIcon,
          onDismiss: () => controller.reverse().then((_) => onDismiss()),
        ),
      ),
    );
  }
}
