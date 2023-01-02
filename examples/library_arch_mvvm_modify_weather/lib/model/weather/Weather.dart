import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

part 'Weather.g.dart';

enum EnumWeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown;
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

  Weather.success(this.location,this.weatherCode,this.temperature,this.lastUpdated) : super.success(location?.getParameterUniqueId);
  Weather.successWhereNotExistsParameterLastUpdated(this.location,this.weatherCode,this.temperature)
      : lastUpdated = DateTime.now(), super.success(location?.getParameterUniqueId);
  Weather.exception(super.exception) : super.exception();
  factory Weather.fromMapThisNetwork(Map<String, dynamic> map) => _$WeatherFromJson(map);

  static Weather get getWeatherForSuccess => Weather.success(Location.getLocationForSuccess,0.0,0.0,DateTime.now());
  static Weather get getWeatherForSuccessWhereKeyNotFound => Weather.success(null,null,null,null);
  static const constWeatherQHiveService = "__weather_q_hive_service__";
  static const constKeyWeatherQHiveService = "__key_weather_q_hive_service__";
  static const constParameterLocation = "location";
  static const constParameterWeatherCode = "weathercode";
  static const constParameterTemperature = "temperature";

  @nonVirtual
  Location? get getParameterLocation => location;
  @nonVirtual
  double? get getParameterWeatherCode => weatherCode;
  @nonVirtual
  double? get getParameterTemperature => temperature;
  @nonVirtual
  DateTime? get getParameterLastUpdated => lastUpdated;

  Color? get getOneParametersNamedForNamedViewOrWidget {
    switch(getEnumWeatherConditionForGetOneParametersNamedForNamedViewOrWidget) {
      case EnumWeatherCondition.clear:
        return Colors.orangeAccent;
      case EnumWeatherCondition.rainy:
        return Colors.indigoAccent;
      case EnumWeatherCondition.cloudy:
        return Colors.blueGrey;
      case EnumWeatherCondition.snowy:
        return Colors.lightBlueAccent;
      case EnumWeatherCondition.unknown:
        return constDefaultColor;
    }
  }

  String? get getOneParametersNamedForWeatherIsLoadingWhereGetTwoParametersNamedForWeatherWidget {
    switch(getEnumWeatherConditionForGetOneParametersNamedForWeatherIsLoadingWhereGetTwoParametersNamedForWeatherWidget) {
      case EnumWeatherCondition.clear:
        return '☀️';
      case EnumWeatherCondition.rainy:
        return '🌧️';
      case EnumWeatherCondition.cloudy:
        return '☁️';
      case EnumWeatherCondition.snowy:
        return '🌨️';
      case EnumWeatherCondition.unknown:
        return '❓';
    }
  }

  String? get getOneParametersNamedForWeatherIsLoadingWhereGetOneParametersNamedForWeatherWidget {
    return temperature?.toStringAsPrecision(2);
  }

  @protected
  EnumWeatherCondition get getEnumWeatherConditionForGetOneParametersNamedForNamedViewOrWidget {
    return _getEnumWeatherCondition;
  }

  @protected
  EnumWeatherCondition get getEnumWeatherConditionForGetOneParametersNamedForWeatherIsLoadingWhereGetTwoParametersNamedForWeatherWidget {
    return _getEnumWeatherCondition;
  }

  EnumWeatherCondition get _getEnumWeatherCondition {
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

  bool? isOneParametersNamedForWeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi() {
    return location != null &&
        weatherCode != null &&
        temperature != null &&
        lastUpdated != null;
  }
}