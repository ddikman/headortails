import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_history.freezed.dart';
part 'game_history.g.dart';

@freezed
abstract class GameHistory with _$GameHistory {
  const GameHistory._();

  const factory GameHistory({
    @Default(0) int heads,
    @Default(0) int tails,
    @Default(0) int wins,
    @Default(0) int losses,
  }) = _GameHistory;

  int get gamesPlayed => heads + tails;

  factory GameHistory.fromJson(Map<String, dynamic> json) => _$GameHistoryFromJson(json);
}