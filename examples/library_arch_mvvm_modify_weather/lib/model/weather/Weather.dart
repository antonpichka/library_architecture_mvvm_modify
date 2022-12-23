import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
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

  Weather.success(this.location,this.weatherCode,this.temperature)
      : lastUpdated = DateTime.now(), super.success(location?.getParameterUniqueId);
  Weather.exception(super.exception) : super.exception();
  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  static Weather get getWeatherForSuccess => Weather.success(Location.getLocationForSuccess,0.0,0.0);
  static const constParameterLocation = "location";
  static const constParameterWeatherCode = "weathercode";
  static const constParameterTemperature = "temperature";

  Color? get getOneParametersNamedForNamedViewOrWidget {
    switch(getWeatherCondition) {
      case WeatherCondition.clear:
        return Colors.orangeAccent;
      case WeatherCondition.rainy:
        return Colors.indigoAccent;
      case WeatherCondition.cloudy:
        return Colors.blueGrey;
      case WeatherCondition.snowy:
        return Colors.lightBlueAccent;
      case WeatherCondition.unknown:
        return constDefaultColor;
      default:
        return constDefaultColor;
    }
  }

  @protected
  WeatherCondition get getWeatherCondition {
    switch (weatherCode?.toInt()) {
      case 0:
        return WeatherCondition.clear;
      case 48:
        return WeatherCondition.cloudy;
      case 99:
        return WeatherCondition.rainy;
      case 86:
        return WeatherCondition.snowy;
      default:
        return WeatherCondition.unknown;
    }
  }
}