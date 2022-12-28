// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Weather',
      json,
      ($checkedConvert) {
        final val = Weather.successWhereNotExistsParameterLastUpdated(
          $checkedConvert(
              'location',
              (v) => v == null
                  ? null
                  : Location.fromMapThisNetwork(v as Map<String, dynamic>)),
          $checkedConvert('weathercode', (v) => (v as num?)?.toDouble()),
          $checkedConvert('temperature', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {'weatherCode': 'weathercode'},
    );
