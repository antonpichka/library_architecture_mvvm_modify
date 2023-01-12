import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/utility/EnumWeatherCondition.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

part 'Weather.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class Weather
    extends BaseModel
{
  @JsonKey(name: constParameterLocation)
  Location? location;
  @JsonKey(name: constParameterWeatherCode)
  double? weatherCode;
  @JsonKey(name: constParameterTemperature)
  double? temperature;
  @JsonKey(ignore: true)
  DateTime? lastUpdated;

  Weather.success(this.location,this.weatherCode,this.temperature,this.lastUpdated) : super.success(location?.uniqueId);
  Weather.successWhereNotExistsParameterLastUpdated(this.location,this.weatherCode,this.temperature)
      : lastUpdated = DateTime.now(), super.success(location?.uniqueId);
  Weather.exception(super.exception) : super.exception();
  factory Weather.fromMapThisNetwork(Map<String, dynamic> map) => _$WeatherFromJson(map);

  static Weather get getWeatherForSuccess => Weather.success(Location.getLocationForSuccess,0.0,0.0,DateTime(0));
  static Weather get getWeatherForSuccessWhereKeyNotFound => Weather.success(null,null,null,null);
  static const constWeatherQHiveService = "__weather_q_hive_service__";
  static const constKeyWeatherQHiveService = "__key_weather_q_hive_service__";
  static const constParameterLocation = "location";
  static const constParameterWeatherCode = "weathercode";
  static const constParameterTemperature = "temperature";

  EnumWeatherCondition get getEnumWeatherCondition {
    switch (weatherCode?.toInt()) {
      case 0:
        return EnumWeatherCondition.clear;
      case 48:
        return EnumWeatherCondition.cloudy;
      case 99:
        return EnumWeatherCondition.rainy;
      case 86:
        return EnumWeatherCondition.snowy;
      default:
        return EnumWeatherCondition.unknown;
    }
  }

  String? get getNameColorFromGetEnumWeatherCondition {
    switch(getEnumWeatherCondition) {
      case EnumWeatherCondition.clear:
        return Colors.orangeAccent.value.toString();
      case EnumWeatherCondition.rainy:
        return Colors.indigoAccent.value.toString();
      case EnumWeatherCondition.cloudy:
        return Colors.blueGrey.value.toString();
      case EnumWeatherCondition.snowy:
        return Colors.lightBlueAccent.value.toString();
      case EnumWeatherCondition.unknown:
        return constDefaultColor.value.toString();
      default:
        return constDefaultColor.value.toString();
    }
  }

  set setFromTemperatureUnitsParameterTemperature(TemperatureUnits temperatureUnits) {
    temperature = temperatureUnits == TemperatureUnits.celsius
        ? temperature?.toCelsius()
        : temperature?.toFahrenheit();
  }

  bool isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated() {
    return location == null &&
        weatherCode == null &&
        temperature == null &&
        lastUpdated == null;
  }
}

extension on double {
  double toFahrenheit() => (this * 9 / 5) + 32;
  double toCelsius() => (this - 32) * 5 / 9;
}