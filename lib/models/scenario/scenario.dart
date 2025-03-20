import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scenarioshelf/constants/domains/trpg_system.dart';
import 'package:scenarioshelf/models/character/character.dart';
import 'package:scenarioshelf/utils/extension_types/id.dart';

part 'scenario.freezed.dart';
part 'scenario.g.dart';

@freezed
abstract class Scenario with _$Scenario {
  @JsonSerializable(fieldRename: FieldRename.snake)
  @Assert(r"kana == null || kana == '' || RegExp(r'^[0-9a-zA-Zァ-ンヴー ]+$').hasMatch(kana!)", 'フリガナに全角カタカナ以外の文字が含まれています')
  factory Scenario({
    required ID id,
    @JsonKey(name: 'trpg_system') required TRPGSystem system,
    required String title,
    @Default([]) List<Character> characters,
    String? kana,
    String? keyVisualUrl,
    String? storeUrl,
    String? author,
  }) = _Scenario;
  const Scenario._();

  factory Scenario.fromJson(Map<String, dynamic> json) => _$ScenarioFromJson(json);

  String get sortTitle {
    if (kana != null && kana!.isNotEmpty) {
      return kana!;
    }

    return title;
  }
}
