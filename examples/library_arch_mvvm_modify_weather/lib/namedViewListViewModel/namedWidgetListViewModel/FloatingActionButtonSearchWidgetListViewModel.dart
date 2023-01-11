import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherAndSettingsQHttpClientAndHiveServiceViewModel/WeatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class FloatingActionButtonSearchWidgetListViewModel {
  @protected
  final WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>> weatherIsLoadingQNoServiceViewModelUsingGetNP;
  @protected
  final WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal<WeatherSettings,ListWeatherSettings<WeatherSettings>> weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi;

  FloatingActionButtonSearchWidgetListViewModel(
      this.weatherIsLoadingQNoServiceViewModelUsingGetNP,
      this.weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi);

  Future<void> getWeatherAndSettingsFromHttpClientAndHiveServiceParameterStringForLocationFromOpenMeteoApiAndSetWeatherAndSettingsAndInGeneralOneTask(String? location)
  async {
    if(location?.isEmpty ?? false) {
      return;
    }
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setOneParametersNamedForFloatingActionButtonSearchWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    // 1
    final weatherAndSettingsFromHttpClientAndHive = await weatherAndSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi
        .getWeatherSettingsFromHttpClientAndHiveServiceParameterString(StringTypeParameter.success(location));
    if(weatherAndSettingsFromHttpClientAndHive
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .getWeatherIsLoadingUsingGetNP
          ?.setTwoParametersNamedForFloatingActionButtonSearchWidget = weatherAndSettingsFromHttpClientAndHive;
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .notifyStreamWeatherIsLoadingUsingGetNP();
      return;
    }
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setThreeParametersNamedForFloatingActionButtonSearchWidget = weatherAndSettingsFromHttpClientAndHive;
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    return;
  }
}