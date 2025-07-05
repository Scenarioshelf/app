extension type EnumID(String id) implements String {
  factory EnumID.fromJson(String id) => EnumID(id);
  String toJson() => id;
}
