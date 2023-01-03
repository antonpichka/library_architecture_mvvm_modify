import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class WeatherAndSettings
    extends BaseModel
{
  @protected
  Weather? weather;
  @protected
  Settings? settings;

  WeatherAndSettings.success(this.weather,this.settings) : super.success("");
  WeatherAndSettings.exception(super.exception) : super.exception();

  static WeatherAndSettings get getWeatherAndSettingsForSuccess => WeatherAndSettings.success(Weather.getWeatherForSuccess,Settings.getSettingsForSuccess);

  @nonVirtual
  Weather? get getParameterWeather => weather;
  @nonVirtual
  Settings? get getParameterSettings => settings;

  set setOneParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(Weather weather) {
    exceptionController = weather.getParameterExceptionController;
  }

  set setTwoParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(Settings settings) {
    exceptionController = settings.getParameterExceptionController;
  }

  void setThreeParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(
      Weather weather,
      Settings settings)
  {
    this.weather = weather;
    this.settings = settings;
  }
}