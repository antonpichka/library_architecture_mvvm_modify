// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location.success(
          $checkedConvert('id', (v) => v as int?),
          $checkedConvert('name', (v) => v as String?),
          $checkedConvert('latitude', (v) => (v as num?)?.toDouble()),
          $checkedConvert('longitude', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );
