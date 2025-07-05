import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'new_character.freezed.dart';

@freezed
abstract class NewCharacter with _$NewCharacter {
  factory NewCharacter({
    required ID scenarioId,
    required String name,
    bool isPublic = true,
    bool isCustomized = false,
    int? number,
    Uint8List? image,
  }) {
    return NewCharacter.inserting(
      id: ID.generate(),
      scenarioId: scenarioId,
      name: name,
      isPublic: isPublic,
      isCustomized: isCustomized,
      number: number,
      image: image,
    );
  }

  const factory NewCharacter.inserting({
    required ID id,
    required ID scenarioId,
    required String name,
    required bool isPublic,
    required bool isCustomized,
    int? number,
    Uint8List? image,
  }) = _NewCharacter;
}
