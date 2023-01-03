import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHiveServiceViewModel/WeatherAndSettingsQHiveServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';

class WeatherWidgetListViewModel {
  @protected
  final WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>> weatherIsLoadingQNoServiceViewModelUsingGetNP;
  @protected
  final WeatherAndSettingsQHiveServiceViewModelUsingGetNP<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>> weatherAndSettingsQHiveServiceViewModelUsingGetNP;

  WeatherWidgetListViewModel(
      this.weatherIsLoadingQNoServiceViewModelUsingGetNP,
      this.weatherAndSettingsQHiveServiceViewModelUsingGetNP);

  Stream<WeatherIsLoading>? get getStreamWeatherIsLoadingUsingGetNP {
    return weatherIsLoadingQNoServiceViewModelUsingGetNP.getStreamWeatherIsLoadingUsingGetNP;
  }

  Future<void> getWeatherAndSettingsFromHiveServiceNPAndSetWeatherAndSettingsAndInGeneralOneTask()
  async {
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setOneParametersNamedForWeatherWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    // 1
    final weatherAndSettingsFromHiveService = await weatherAndSettingsQHiveServiceViewModelUsingGetNP
        .getWeatherAndSettingsFromHiveServiceNPAndSetWeatherAndSettings();
    if(weatherAndSettingsFromHiveService
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .getWeatherIsLoadingUsingGetNP
          ?.setTwoParametersNamedForWeatherWidget = weatherAndSettingsFromHiveService;
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .notifyStreamWeatherIsLoadingUsingGetNP();
      return;
    }
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setThreeParametersNamedForWeatherWidget = weatherAndSettingsFromHiveService;
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
  }
}