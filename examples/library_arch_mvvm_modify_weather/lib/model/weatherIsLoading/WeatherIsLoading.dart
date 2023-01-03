import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
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
  @protected
  bool? isLoading;
  @protected
  TemperatureUnits? temperatureUnits;
  @protected
  Weather? weather;

  WeatherIsLoading.success(this.isLoading,this.temperatureUnits,this.weather) : super.success(weather?.getParameterUniqueId);
  WeatherIsLoading.exception(super.exception) : super.exception();

  static WeatherIsLoading get getWeatherIsLoadingForSuccess => WeatherIsLoading.success(false,TemperatureUnits.celsius,Weather.getWeatherForSuccess);

  EnumWeatherIsLoadingForWeatherWidget get getEnumWeatherIsLoadingForWeatherWidget {
    if(isLoading ?? false) {
      return EnumWeatherIsLoadingForWeatherWidget.isLoading;
    }
    if(exceptionController.isExceptionNotEqualsNull()) {
      return EnumWeatherIsLoadingForWeatherWidget.exception;
    }
    if(isOneParametersNamedForGetEnumWeatherIsLoadingForWeatherWidget() ?? false) {
      return EnumWeatherIsLoadingForWeatherWidget.isEmpty;
    }
    return EnumWeatherIsLoadingForWeatherWidget.success;
  }

  String? get getOneParametersNamedForWeatherWidget {
    return '''${weather?.getOneParametersNamedForWeatherIsLoadingWhereGetOneParametersNamedForWeatherWidget}°${(isOneParametersNamedForGetOneParametersNamedForWeatherWidget() ?? true) ? 'C' : 'F'}''';
  }

  String? get getTwoParametersNamedForWeatherWidget {
    return weather?.getOneParametersNamedForWeatherIsLoadingWhereGetTwoParametersNamedForWeatherWidget;
  }

  String? get getThreeParametersNamedForWeatherWidget {
    return weather?.getParameterLocation?.getParameterName;
  }

  String? getFourParametersNamedForWeatherWidget(BuildContext context) {
    return "Last Updated at ${TimeOfDay.fromDateTime(weather!.getParameterLastUpdated!).format(context)}";
  }

  void setOneParametersNamedForFloatingActionButtonSearchWidget() {
    isLoading = true;
  }

  set setTwoParametersNamedForFloatingActionButtonSearchWidget(Weather weather) {
    exceptionController = weather.getParameterExceptionController;
    isLoading = false;
  }

  set setThreeParametersNamedForFloatingActionButtonSearchWidget(Weather weather) {
    this.weather = weather;
    isLoading = false;
  }

  void setOneParametersNamedForWeatherWidget() {
    isLoading = true;
  }

  set setTwoParametersNamedForWeatherWidget(WeatherAndSettings weatherAndSettings) {
    exceptionController = weatherAndSettings.getParameterExceptionController;
    isLoading = false;
  }

  set setThreeParametersNamedForWeatherWidget(WeatherAndSettings weatherAndSettings) {
    weather = weatherAndSettings.getParameterWeather;
    temperatureUnits = weatherAndSettings.getParameterSettings?.getParameterTemperatureUnits;
    isLoading = false;
  }

  @protected
  bool? isOneParametersNamedForGetEnumWeatherIsLoadingForWeatherWidget() {
    return weather?.isOneParametersNamedForWeatherIsLoadingWhereIsOneParametersNamedForGetEnumWeatherIsLoadingForWeatherWidget();
  }

  @protected
  bool? isOneParametersNamedForGetOneParametersNamedForWeatherWidget() {
    return temperatureUnits == TemperatureUnits.celsius;
  }
}