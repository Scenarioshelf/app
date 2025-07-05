import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
abstract class Character with _$Character {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Character({
    required ID id,
    required String name,
    @Default(true) bool isPublic,
    @Default(false) bool isCustomized,
    int? number,
    String? imageUrl,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
