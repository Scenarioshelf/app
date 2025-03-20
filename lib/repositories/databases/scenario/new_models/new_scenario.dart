import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/constants/domains/trpg_system.dart';
import 'package:scenarioshelf/repositories/databases/character/new_models/new_character.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'new_scenario.freezed.dart';

@freezed
abstract class NewScenario with _$NewScenario {
  @Assert(r"kana == null || kana == '' || RegExp(r'^[0-9a-zA-Zァ-ンヴー ]+$').hasMatch(kana!)", 'フリガナに全角カタカナ以外の文字が含まれています')
  factory NewScenario({
    required TRPGSystem system,
    required String title,
    List<NewCharacter> characters = const [],
    String? kana,
    Uint8List? keyVisual,
    String? storeUrl,
    String? author,
  }) {
    return NewScenario.inserting(
      id: ID.generate(),
      system: system,
      title: title,
      characters: characters,
      kana: kana,
      keyVisual: keyVisual,
      storeUrl: storeUrl,
      author: author,
    );
  }

  const factory NewScenario.inserting({
    required ID id,
    required TRPGSystem system,
    required String title,
    required List<NewCharacter> characters,
    String? kana,
    Uint8List? keyVisual,
    String? storeUrl,
    String? author,
  }) = _NewScenario;
}
