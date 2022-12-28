import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherQHiveServiceViewModel/WeatherQHiveServiceViewModelUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherQHttpClientServiceViewModel/WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class FloatingActionButtonSearchWidgetListViewModel {
  @protected
  final WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<Weather,ListWeather<Weather>> weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi;
  @protected
  final WeatherQHiveServiceViewModelUsingUpdateParameterWeather<Weather,ListWeather<Weather>> weatherQHiveServiceViewModelUsingUpdateParameterWeather;
  @protected
  final WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>> weatherIsLoadingQNoServiceViewModelUsingGetNP;

  FloatingActionButtonSearchWidgetListViewModel(
      this.weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi,
      this.weatherQHiveServiceViewModelUsingUpdateParameterWeather,
      this.weatherIsLoadingQNoServiceViewModelUsingGetNP);

  Future<void> getWeatherFromHttpClientServiceParameterStringAndInGeneralTwoTasks(String location)
  async {
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setOneParametersNamedForFloatingActionButtonSearchWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
    // 1
    final weatherFromHttpClient = await weatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi
        .getWeatherFromHttpClientServiceParameterString(StringTypeParameter.success(location));
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setTwoParametersNamedForFloatingActionButtonSearchWidget = weatherFromHttpClient!;
    if(weatherFromHttpClient!
        .getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .getWeatherIsLoadingUsingGetNP
          ?.setThreeParametersNamedForFloatingActionButtonSearchWidget();
      weatherIsLoadingQNoServiceViewModelUsingGetNP
          .notifyStreamWeatherIsLoadingUsingGetNP();
      return;
    }
    // 2
    await weatherQHiveServiceViewModelUsingUpdateParameterWeather
        .updateWeatherToHiveServiceParameterWeather(WeatherTypeParameter<Weather>.success(weatherFromHttpClient));
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .getWeatherIsLoadingUsingGetNP
        ?.setThreeParametersNamedForFloatingActionButtonSearchWidget();
    weatherIsLoadingQNoServiceViewModelUsingGetNP
        .notifyStreamWeatherIsLoadingUsingGetNP();
  }

}