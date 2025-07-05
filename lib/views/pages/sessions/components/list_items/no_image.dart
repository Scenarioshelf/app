import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:scenarioshelf/constants/assets/gen/assets.gen.dart';

class NoImage extends HookWidget {
  const NoImage({
    required this.decoration,
    super.key,
  });

  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final key = useState(GlobalKey());
    final size = useState(Size.zero);

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final renderBox = key.value.currentContext?.findRenderObject() as RenderBox?;
          size.value = renderBox?.size ?? Size.zero;
        });
        return;
      },
      const [],
    );

    return Container(
      key: key.value,
      decoration: decoration,
      child: Center(
        child: Assets.images.logos.appLogo.image(
          width: size.value.width * 0.6,
        ),
      ),
    );
  }
}
