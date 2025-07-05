import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    lineLength: 150,
    noBoxingByDefault: true,
    excludeBox: {
      Level.warning: false,
      Level.error: false,
      Level.fatal: false,
    },
  ),
);
