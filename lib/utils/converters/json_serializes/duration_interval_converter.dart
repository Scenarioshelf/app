import 'package:json_annotation/json_annotation.dart';

class DurationIntervalConverter implements JsonConverter<Duration, String> {
  const DurationIntervalConverter();

  @override
  Duration fromJson(String json) {
    final times = json.split(':').reversed.toList();
    Duration duration = Duration.zero;

    for (int i = 0; i < times.length; i++) {
      final time = switch (i) {
        0 => Duration(seconds: int.parse(times[i])),
        1 => Duration(minutes: int.parse(times[i])),
        2 => Duration(hours: int.parse(times[i])),
        3 => Duration(days: int.parse(times[i])),
        int() => throw Exception('Invalid duration format'),
      };
      duration += time;
    }

    return duration;
  }

  @override
  String toJson(Duration duration) {
    return '${duration.inSeconds} seconds';
  }
}
