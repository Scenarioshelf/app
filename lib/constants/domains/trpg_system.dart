import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'id')
enum TRPGSystem {
  mm(
    id: 'mm',
    name: 'マーダーミステリー',
    abbr: 'マダミス',
    color: Color(0xFFffbf7f),
  ),
  coc6(
    id: 'coc6',
    name: 'クトゥルフ神話',
    abbr: 'CoC6',
    color: Color(0xFFff7fff),
  ),
  coc7(
    id: 'coc7',
    name: '新クトゥルフ神話',
    abbr: 'CoC7',
    color: Color(0xFFbf7fff),
  ),
  ek(
    id: 'ek',
    name: 'エモクロア',
    abbr: 'エモクロア',
    color: Color(0xFF7f7fff),
  ),
  sw20(
    id: 'sw20',
    name: 'ソード・ワールド2.0',
    abbr: 'SW2.0',
    color: Color(0xFFbfff7f),
  ),
  sw25(
    id: 'sw25',
    name: 'ソード・ワールド2.5',
    abbr: 'SW2.5',
    color: Color(0xFFffff7f),
  ),
  shinobi(
    id: 'shinobi',
    name: 'シノビガミ',
    abbr: 'シノビガミ',
    color: Color(0xFF404040),
  ),
  dx3rd(
    id: 'dx3rd',
    name: 'ダブルクロス3rd',
    abbr: 'DX3',
    color: Color(0xFF7fffbf),
  ),
  dd(
    id: 'dd',
    name: 'ダンジョンズ＆ドラゴンズ',
    abbr: 'D&D',
    color: Color(0xFFff7f7f),
  ),
  sp(
    id: 'sp',
    name: 'ストーリープレイング',
    abbr: 'ストプレ',
    color: Color(0xFFffd580),
  ),
  other(
    id: 'other',
    name: 'その他',
    abbr: 'その他',
    color: Color(0xFFc0c0c0),
  );

  const TRPGSystem({
    required this.id,
    required this.name,
    required this.abbr,
    required this.color,
  });

  factory TRPGSystem.fromId(String id) {
    return TRPGSystem.values.firstWhere(
      (system) => system.id == id,
      orElse: () => TRPGSystem.other,
    );
  }

  final String id;
  final String name;
  final String abbr;
  final Color color;
}
