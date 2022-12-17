import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

part 'Weather.g.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

@JsonSerializable(ignoreUnannotated: true)
class Weather
    extends BaseModel
{
  @protected
  @JsonKey(name: constParameterLocation)
  Location? location;
  @protected
  @JsonKey(name: constParameterWeatherCode)
  double? weatherCode;
  @protected
  @JsonKey(name: constParameterTemperature)
  double? temperature;
  @protected
  @JsonKey(ignore: true)
  DateTime? lastUpdated;

  Weather(this.location,this.weatherCode,this.temperature)
        : lastUpdated = DateTime.now(), super.success(location?.getParameterUniqueId);
  Weather.success(this.location,this.weatherCode,this.temperature)
      : lastUpdated = DateTime.now(), super.success(location?.getParameterUniqueId);
  Weather.exception(super.exception) : super.exception();
  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  static Weather get getWeatherForSuccess => Weather.success(Location.getLocationForSuccess,0.0,0.0);
  static const constParameterLocation = "location";
  static const constParameterWeatherCode = "weathercode";
  static const constParameterTemperature = "temperature";

  WeatherCondition get getOneParametersNamedForNamedWidget {
    switch (weatherCode?.toInt()) {
      case 0:
        return WeatherCondition.clear;
      case 1:
      case 2:
      case 3:
      case 45:
      case 48:
        return WeatherCondition.cloudy;
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
        return WeatherCondition.rainy;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return WeatherCondition.snowy;
      default:
        return WeatherCondition.unknown;
    }
  }
}