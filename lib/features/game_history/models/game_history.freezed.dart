// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameHistory _$GameHistoryFromJson(Map<String, dynamic> json) {
  return _GameHistory.fromJson(json);
}

/// @nodoc
mixin _$GameHistory {
  int get heads => throw _privateConstructorUsedError;
  int get tails => throw _privateConstructorUsedError;
  int get wins => throw _privateConstructorUsedError;
  int get losses => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameHistoryCopyWith<GameHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameHistoryCopyWith<$Res> {
  factory $GameHistoryCopyWith(
          GameHistory value, $Res Function(GameHistory) then) =
      _$GameHistoryCopyWithImpl<$Res>;
  $Res call({int heads, int tails, int wins, int losses});
}

/// @nodoc
class _$GameHistoryCopyWithImpl<$Res> implements $GameHistoryCopyWith<$Res> {
  _$GameHistoryCopyWithImpl(this._value, this._then);

  final GameHistory _value;
  // ignore: unused_field
  final $Res Function(GameHistory) _then;

  @override
  $Res call({
    Object? heads = freezed,
    Object? tails = freezed,
    Object? wins = freezed,
    Object? losses = freezed,
  }) {
    return _then(_value.copyWith(
      heads: heads == freezed
          ? _value.heads
          : heads // ignore: cast_nullable_to_non_nullable
              as int,
      tails: tails == freezed
          ? _value.tails
          : tails // ignore: cast_nullable_to_non_nullable
              as int,
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      losses: losses == freezed
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_GameHistoryCopyWith<$Res>
    implements $GameHistoryCopyWith<$Res> {
  factory _$$_GameHistoryCopyWith(
          _$_GameHistory value, $Res Function(_$_GameHistory) then) =
      __$$_GameHistoryCopyWithImpl<$Res>;
  @override
  $Res call({int heads, int tails, int wins, int losses});
}

/// @nodoc
class __$$_GameHistoryCopyWithImpl<$Res> extends _$GameHistoryCopyWithImpl<$Res>
    implements _$$_GameHistoryCopyWith<$Res> {
  __$$_GameHistoryCopyWithImpl(
      _$_GameHistory _value, $Res Function(_$_GameHistory) _then)
      : super(_value, (v) => _then(v as _$_GameHistory));

  @override
  _$_GameHistory get _value => super._value as _$_GameHistory;

  @override
  $Res call({
    Object? heads = freezed,
    Object? tails = freezed,
    Object? wins = freezed,
    Object? losses = freezed,
  }) {
    return _then(_$_GameHistory(
      heads: heads == freezed
          ? _value.heads
          : heads // ignore: cast_nullable_to_non_nullable
              as int,
      tails: tails == freezed
          ? _value.tails
          : tails // ignore: cast_nullable_to_non_nullable
              as int,
      wins: wins == freezed
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int,
      losses: losses == freezed
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameHistory extends _GameHistory {
  const _$_GameHistory(
      {this.heads = 0, this.tails = 0, this.wins = 0, this.losses = 0})
      : super._();

  factory _$_GameHistory.fromJson(Map<String, dynamic> json) =>
      _$$_GameHistoryFromJson(json);

  @override
  @JsonKey()
  final int heads;
  @override
  @JsonKey()
  final int tails;
  @override
  @JsonKey()
  final int wins;
  @override
  @JsonKey()
  final int losses;

  @override
  String toString() {
    return 'GameHistory(heads: $heads, tails: $tails, wins: $wins, losses: $losses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GameHistory &&
            const DeepCollectionEquality().equals(other.heads, heads) &&
            const DeepCollectionEquality().equals(other.tails, tails) &&
            const DeepCollectionEquality().equals(other.wins, wins) &&
            const DeepCollectionEquality().equals(other.losses, losses));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(heads),
      const DeepCollectionEquality().hash(tails),
      const DeepCollectionEquality().hash(wins),
      const DeepCollectionEquality().hash(losses));

  @JsonKey(ignore: true)
  @override
  _$$_GameHistoryCopyWith<_$_GameHistory> get copyWith =>
      __$$_GameHistoryCopyWithImpl<_$_GameHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameHistoryToJson(this);
  }
}

abstract class _GameHistory extends GameHistory {
  const factory _GameHistory(
      {final int heads,
      final int tails,
      final int wins,
      final int losses}) = _$_GameHistory;
  const _GameHistory._() : super._();

  factory _GameHistory.fromJson(Map<String, dynamic> json) =
      _$_GameHistory.fromJson;

  @override
  int get heads => throw _privateConstructorUsedError;
  @override
  int get tails => throw _privateConstructorUsedError;
  @override
  int get wins => throw _privateConstructorUsedError;
  @override
  int get losses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GameHistoryCopyWith<_$_GameHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
