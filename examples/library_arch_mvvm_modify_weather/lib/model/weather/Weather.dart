import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
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

  static Weather get getWeatherForSuccess => Weather.success(Location.getLocationForSuccess,0.0,0.0,DateTime(0));
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

  String? get getOneParametersNamedForWeatherAndSettingsWhereSetThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi {
    switch(getEnumWeatherConditionForGetOneParametersNamedForWeatherAndSettingsWhereSetThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi) {
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
  EnumWeatherCondition get getEnumWeatherConditionForGetOneParametersNamedForWeatherAndSettingsWhereSetThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi {
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

  set setOneParametersNamedForWeatherIsLoadingWhereSetThreeParametersNamedForFloatingActionButtonSearchWidget(
      TemperatureUnits temperatureUnits)
  {
    _setFromTemperatureUnitsParameterTemperature = temperatureUnits;
  }

  set setOneParametersNamedForWeatherIsLoadingWhereSetThreeParametersNamedForWeatherWidget(
      TemperatureUnits temperatureUnits)
  {
    _setFromTemperatureUnitsParameterTemperature = temperatureUnits;
  }

  set setOneParametersNamedForWeatherIsLoadingWhereSetSixParametersNamedForWeatherWidget(
      TemperatureUnits temperatureUnits)
  {
    _setFromTemperatureUnitsParameterTemperature = temperatureUnits;
  }

  set _setFromTemperatureUnitsParameterTemperature(TemperatureUnits temperatureUnits) {
    temperature = temperatureUnits == TemperatureUnits.celsius
        ? temperature?.toCelsius()
        : temperature?.toFahrenheit();
  }

  bool? isOneParametersNamedForWeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi() {
    return location != null &&
        weatherCode != null &&
        temperature != null &&
        lastUpdated != null;
  }

  bool? isOneParametersNamedForWeatherIsLoadingWhereIsOneParametersNamedForGetEnumWeatherIsLoadingForWeatherWidget() {
    return _isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated();
  }

  bool? isOneParametersNamedForWeatherIsLoadingWhereIsThreeParametersNamedForWeatherWidget() {
    return _isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated();
  }

  bool _isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated() {
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