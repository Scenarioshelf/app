import 'package:uuid/uuid.dart';

extension type ID(String id) {
  factory ID.fromJson(String id) => ID(id);
  ID.generate() : this(const Uuid().v4());

  String toJson() => id;
}
