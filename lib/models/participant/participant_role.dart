part of 'participant.dart';

@JsonEnum(valueField: 'id')
enum ParticipantRole {
  gameMaster(id: 'gm' as EnumID, label: 'ゲームマスター'),
  subGameMaster(id: 'sgm' as EnumID, label: 'サブゲームマスター'),
  player(id: 'player' as EnumID, label: 'プレイヤー'),
  spectator(id: 'spectator' as EnumID, label: '観戦者');

  const ParticipantRole({
    required this.id,
    required this.label,
  });

  final EnumID id;
  final String label;
}
