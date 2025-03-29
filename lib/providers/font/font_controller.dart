import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_controller.g.dart';

@Riverpod(keepAlive: true)
TextTheme fontController(Ref ref) {
  return GoogleFonts.ibmPlexSansJpTextTheme();
}
