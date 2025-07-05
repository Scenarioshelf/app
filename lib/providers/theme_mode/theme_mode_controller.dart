import 'package:flutter/material.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_controller.g.dart';

@Riverpod(keepAlive: true)
class ThemeModeController extends _$ThemeModeController {
  @override
  ThemeMode build() => ThemeMode.system;

  @override
  set state(ThemeMode themeMode) => super.state = themeMode;
}
