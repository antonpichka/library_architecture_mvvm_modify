import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/utility/TemperatureUnits.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

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

  Weather? get getOneParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingParameterWeatherAndSettings => weather;
  Settings? get getTwoParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingParameterWeatherAndSettings => settings;

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

  set setOneParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(Weather weather) {
    exceptionController = weather.getParameterExceptionController;
  }

  set setTwoParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(WeatherAndSettings weatherAndSettings) {
    exceptionController = weatherAndSettings.getParameterExceptionController;
  }

  set setThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(Weather weather) {
    this.weather = weather;
    settings
        ?.setParameterColor = this.weather?.getOneParametersNamedForWeatherAndSettingsWhereSetThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi ??  constDefaultColor.value.toString();
  }

  set setFourParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(BoolTypeParameter boolTypeParameter) {
    exceptionController = boolTypeParameter.exceptionController;
  }

  void setOneParametersNamedFloatingActionButtonSearchWidget() {
    weather
        ?.setOneParametersNamedForWeatherAndSettingsWhereSetOneParametersNamedFloatingActionButtonSearchWidget = settings?.getParameterTemperatureUnits ?? TemperatureUnits.celsius;
  }

  void setOneParametersNamedWeatherWidget() {
    weather
        ?.setOneParametersNamedForWeatherAndSettingsWhereSetOneParametersNamedWeatherWidget = settings?.getParameterTemperatureUnits ?? TemperatureUnits.celsius;
  }
}