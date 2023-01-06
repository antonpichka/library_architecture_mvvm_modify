import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHiveServiceViewModel/WeatherAndSettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHttpClientAndHiveServiceViewModel/WeatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class WeatherWidgetListViewModel {
  @protected
  final WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>> weatherIsLoadingQNoServiceViewModelUsingGetNP;
  @protected
  final WeatherAndSettingsQHiveServiceViewModelUsingGetNP<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>> weatherAndSettingsQHiveServiceViewModelUsingGetNP;
  @protected
  final WeatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>> weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi;

  WeatherWidgetListViewModel(
      this.weatherIsLoadingQNoServiceViewModelUsingGetNP,
      this.weatherAndSettingsQHiveServiceViewModelUsingGetNP,
      this.weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi);

  Stream<WeatherIsLoading>? get getStreamWeatherIsLoadingUsingGetNP {
    return weatherIsLoadingQNoServiceViewModelUsingGetNP.getStreamWeatherIsLoadingUsingGetNP;
  }

  Future<void> getWeatherAndSettingsFromHiveServiceNPAndSetWeatherAndSettingsAndInGeneralOneTask()
  async {
    if(weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.isOneParametersNamedForWeatherWidget() ?? false)
    {
      return;
    }
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setOneParametersNamedForWeatherWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    // 1
    final weatherAndSettingsFromHive = await weatherAndSettingsQHiveServiceViewModelUsingGetNP
        .getWeatherAndSettingsFromHiveServiceNPAndSetWeatherAndSettings();
    if(weatherAndSettingsFromHive
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .getWeatherIsLoadingUsingGetNP
          ?.setTwoParametersNamedForWeatherWidget = weatherAndSettingsFromHive;
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .notifyStreamWeatherIsLoadingUsingGetNP();
      return;
    }
    weatherAndSettingsFromHive
        .setOneParametersNamedWeatherWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setThreeParametersNamedForWeatherWidget = weatherAndSettingsFromHive;
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    return;
  }

  Future<void> getWeatherAndSettingsFromHttpClientAndHiveServiceParameterStringForLocationFromOpenMeteoApiAndSetWeatherAndSettingsAndInGeneralOneTask()
  async {
    if(weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.isTwoParametersNamedForWeatherWidget() ?? false)
    {
      return;
    }
    if(weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.isThreeParametersNamedForWeatherWidget() ?? false)
    {
      return;
    }
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setFourParametersNamedForWeatherWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    // 1
    final weatherAndSettingsFromHttpClientAndHive = await weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi
        .getWeatherAndSettingsFromHttpClientAndHiveServiceParameterStringForLocationFromOpenMeteoApiAndSetWeatherAndSettings(StringTypeParameter.success(weatherIsLoadingQNoServiceViewModelUsingGetNP.getWeatherIsLoadingUsingGetNP?.getFiveParametersNamedForWeatherWidget));
    if(weatherAndSettingsFromHttpClientAndHive
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .getWeatherIsLoadingUsingGetNP
          ?.setFiveParametersNamedForWeatherWidget = weatherAndSettingsFromHttpClientAndHive;
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .notifyStreamWeatherIsLoadingUsingGetNP();
      return;
    }
    weatherAndSettingsFromHttpClientAndHive
        .setOneParametersNamedWeatherWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setSixParametersNamedForWeatherWidget = weatherAndSettingsFromHttpClientAndHive;
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    return;
  }
}