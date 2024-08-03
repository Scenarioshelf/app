// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:scenarioshelf/providers/theme_mode/theme_mode_controller.dart';

part 'material_color.dart';
part 'ui_color.dart';
part 'text_color.dart';

abstract interface class ThemeColor {
  ColorScheme get material;
  _UIColor get ui;
  _TextColor get text;
}

class LightThemeColor implements ThemeColor {
  @override
  final material = const _AppMaterialLight();
  @override
  final ui = LightUIColor();
  @override
  final text = LightTextColor();
}

class DarkThemeColor implements ThemeColor {
  @override
  final material = const _AppMaterialDark();
  @override
  final ui = DarkUIColor();
  @override
  final text = DarkTextColor();
}

class AppColor {
  static ThemeColor of(BuildContext context) {
    final ref = ProviderScope.containerOf(context);
    final themeMode = ref.read(themeModeControllerProvider);

    switch (themeMode) {
      case ThemeMode.light:
        return LightThemeColor();
      case ThemeMode.dark:
        return DarkThemeColor();
      case ThemeMode.system:
        final platformBrightness = MediaQuery.platformBrightnessOf(context);

        switch (platformBrightness) {
          case Brightness.light:
            return LightThemeColor();
          case Brightness.dark:
            return DarkThemeColor();
        }
    }
  }
}
