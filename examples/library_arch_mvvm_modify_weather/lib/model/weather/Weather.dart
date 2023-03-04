import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/utility/EnumWeatherCondition.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

part 'Weather.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class Weather extends BaseModel {
  static const String constWeatherQHiveService = "__weather_q_hive_service__";
  static const String constParameterLocation = "location";
  static const String constParameterWeatherCode = "weathercode";
  static const String constParameterTemperature = "temperature";
  static const String constParameterLastUpdated = "last_updated";

  @JsonKey(name: constParameterLocation)
  Location? location;
  @JsonKey(name: constParameterWeatherCode)
  double? weatherCode;
  @JsonKey(name: constParameterTemperature)
  double? temperature;
  @JsonKey(includeToJson: false, includeFromJson: false)
  DateTime? lastUpdated;

  Weather.success(
      this.location, this.weatherCode, this.temperature, this.lastUpdated)
      : super.success(location?.uniqueId);
  Weather.successWhereNotExistsParameterLastUpdated(
      this.location, this.weatherCode, this.temperature)
      : lastUpdated = DateTime.now(),
        super.success(location?.uniqueId);
  Weather.exception(super.exception) : super.exception();
  factory Weather.fromMapThisNetwork(Map<String, dynamic> map) =>
      _$WeatherFromJson(map);
  factory Weather.fromBoxWeather(Box boxWeather) {
    final locationIdFromBoxWeather = boxWeather
        .get("${constParameterLocation}_${Location.constParameterId}");
    final locationNameFromBoxWeather = boxWeather
        .get("${constParameterLocation}_${Location.constParameterName}");
    final locationLatitudeFromBoxWeather = boxWeather
        .get("${constParameterLocation}_${Location.constParameterLatitude}");
    final locationLongitudeFromBoxWeather = boxWeather
        .get("${constParameterLocation}_${Location.constParameterLongitude}");
    final locationFromBoxWeather = Location.success(
        locationIdFromBoxWeather,
        locationNameFromBoxWeather,
        locationLatitudeFromBoxWeather,
        locationLongitudeFromBoxWeather);
    final weatherCodeFromBoxWeather = boxWeather.get(constParameterWeatherCode);
    final temperatureFromBoxWeather = boxWeather.get(constParameterTemperature);
    final lastUpdatedFromBoxWeather = boxWeather.get(constParameterLastUpdated);
    return Weather.success(
        locationFromBoxWeather
                .isEqualsNullParametersIdAndNameAndLatitudeAndLongitude()
            ? null
            : locationFromBoxWeather,
        weatherCodeFromBoxWeather,
        temperatureFromBoxWeather,
        lastUpdatedFromBoxWeather);
  }

  static Weather get getWeatherForSuccess =>
      Weather.success(Location.getLocationForSuccess, 0.0, 0.0, DateTime(0));

  EnumWeatherCondition get getEnumWeatherCondition {
    switch (weatherCode?.toInt()) {
      case 0:
        return EnumWeatherCondition.clear;
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
        return EnumWeatherCondition.cloudy;
      case 51:
      case 53:
      case 55:
      case 56:
      case 57:
      case 61:
      case 63:
      case 65:
      case 66:
      case 67:
      case 80:
      case 81:
      case 82:
      case 95:
      case 96:
      case 99:
        return EnumWeatherCondition.rainy;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return EnumWeatherCondition.snowy;
      default:
        return EnumWeatherCondition.unknown;
    }
  }

  String? get getNameColorFromGetEnumWeatherCondition {
    switch (getEnumWeatherCondition) {
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

  set setOneFromTemperatureUnitsParameterTemperature(
      TemperatureUnits temperatureUnits) {
    temperature = temperatureUnits == TemperatureUnits.celsius
        ? temperature
        : temperature?.toFahrenheit();
  }

  bool
      isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated() {
    return location == null &&
        weatherCode == null &&
        temperature == null &&
        lastUpdated == null;
  }
}

extension on double {
  double toFahrenheit() => (this * 9 / 5) + 32;
  // double toCelsius() => (this - 32) * 5 / 9;
}
