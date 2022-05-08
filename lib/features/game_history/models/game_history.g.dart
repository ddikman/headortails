// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameHistory _$$_GameHistoryFromJson(Map<String, dynamic> json) =>
    _$_GameHistory(
      heads: json['heads'] as int? ?? 0,
      tails: json['tails'] as int? ?? 0,
      wins: json['wins'] as int? ?? 0,
      losses: json['losses'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GameHistoryToJson(_$_GameHistory instance) =>
    <String, dynamic>{
      'heads': instance.heads,
      'tails': instance.tails,
      'wins': instance.wins,
      'losses': instance.losses,
    };
