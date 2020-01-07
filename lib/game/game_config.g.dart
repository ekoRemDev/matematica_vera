// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameConfig _$GameConfigFromJson(Map<String, dynamic> json) {
  return GameConfig(
    type: _$enumDecode(_$GameTypeEnumMap, json['type']),
    maxNumber: json['maxNumber'] as int,
    answersCount: json['answersCount'] as int,
    exerciseCount: json['exerciseCount'] as int,
  );
}

Map<String, dynamic> _$GameConfigToJson(GameConfig instance) =>
    <String, dynamic>{
      'type': _$GameTypeEnumMap[instance.type],
      'maxNumber': instance.maxNumber,
      'answersCount': instance.answersCount,
      'exerciseCount': instance.exerciseCount,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

const _$GameTypeEnumMap = {
  GameType.addition: 'addition',
  GameType.subtraction: 'subtraction',
};