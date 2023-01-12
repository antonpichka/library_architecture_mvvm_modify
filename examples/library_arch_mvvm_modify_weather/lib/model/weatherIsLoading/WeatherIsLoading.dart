import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/utility/EnumWeatherCondition.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

enum EnumWeatherIsLoadingForWeatherWidget {
  isLoading,
  exception,
  isEmpty,
  success
}

class WeatherIsLoading
    extends BaseModel
{
  bool? isLoading;
  TemperatureUnits? temperatureUnits;
  Weather? weather;

  WeatherIsLoading.success(this.isLoading,this.temperatureUnits,this.weather) : super.success(weather?.uniqueId);
  WeatherIsLoading.exception(super.exception) : super.exception();

  static WeatherIsLoading get getWeatherIsLoadingForSuccess => WeatherIsLoading.success(false,TemperatureUnits.celsius,Weather.getWeatherForSuccess);

  EnumWeatherIsLoadingForWeatherWidget get getEnumWeatherIsLoadingForWeatherWidget {
    if(isLoading ?? false) {
      return EnumWeatherIsLoadingForWeatherWidget.isLoading;
    }
    if(exceptionController.isExceptionNotEqualsNull()) {
      return EnumWeatherIsLoadingForWeatherWidget.exception;
    }
    if(weather?.isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated() ?? false) {
      return EnumWeatherIsLoadingForWeatherWidget.isEmpty;
    }
    return EnumWeatherIsLoadingForWeatherWidget.success;
  }

  String? get getOneParametersNamedForWeatherWidget {
    return '''${weather?.temperature?.toStringAsPrecision(2)}°${(temperatureUnits == TemperatureUnits.celsius) ? 'C' : 'F'}''';
  }

  String? get getTwoParametersNamedForWeatherWidget {
    switch(weather?.getEnumWeatherCondition) {
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
      default:
        return '❓';
    }
  }

  String? get getThreeParametersNamedForWeatherWidget {
    return weather?.location?.name;
  }

  String? getFourParametersNamedForWeatherWidget(BuildContext context) {
    return "Last Updated at ${TimeOfDay.fromDateTime(weather?.lastUpdated ?? DateTime(0)).format(context)}";
  }

  String? get getFiveParametersNamedForWeatherWidget {
    return weather?.location?.name;
  }

  void setOneParametersNamedForFloatingActionButtonSearchWidget() {
    isLoading = true;
  }

  set setTwoParametersNamedForFloatingActionButtonSearchWidget(WeatherSettings weatherSettings) {
    exceptionController = weatherSettings.exceptionController;
    isLoading = false;
  }

  set setThreeParametersNamedForFloatingActionButtonSearchWidget(WeatherSettings weatherSettings) {
    weather = weatherSettings.weather;
    weather?.setFromTemperatureUnitsParameterTemperature = temperatureUnits ?? TemperatureUnits.celsius;
    isLoading = false;
  }

  void setOneParametersNamedForWeatherWidget() {
    isLoading = true;
  }

  set setTwoParametersNamedForWeatherWidget(WeatherSettings weatherSettings) {
    exceptionController = weatherSettings.exceptionController;
    isLoading = false;
  }

  set setThreeParametersNamedForWeatherWidget(WeatherSettings weatherSettings) {
    weather = weatherSettings.weather;
    temperatureUnits = weatherSettings.settings?.temperatureUnits;
    weather?.setFromTemperatureUnitsParameterTemperature = temperatureUnits ?? TemperatureUnits.celsius;
    isLoading = false;
  }

  void setFourParametersNamedForWeatherWidget() {
    isLoading = true;
  }

  set setFiveParametersNamedForWeatherWidget(WeatherSettings weatherSettings) {
    exceptionController = weatherSettings.exceptionController;
    isLoading = false;
  }

  set setSixParametersNamedForWeatherWidget(WeatherSettings weatherSettings) {
    weather = weatherSettings.weather;
    weather?.setFromTemperatureUnitsParameterTemperature = temperatureUnits ?? TemperatureUnits.celsius;
    isLoading = false;
  }

  set setOneParametersNamedForIconButtonSettingsWidget(WeatherSettings weatherSettings) {
    weather?.temperature = weatherSettings.weather?.temperature;
    temperatureUnits = weatherSettings.settings?.temperatureUnits;
    weather?.setFromTemperatureUnitsParameterTemperature = temperatureUnits ?? TemperatureUnits.celsius;
  }

  bool? isOneParametersNamedForWeatherWidget() {
    return isLoading;
  }

  bool? isTwoParametersNamedForWeatherWidget() {
    return isLoading;
  }

  bool? isThreeParametersNamedForWeatherWidget() {
    return weather?.isEqualsNullParametersLocationAndWeatherCodeAndTemperatureAndLastUpdated();
  }
}