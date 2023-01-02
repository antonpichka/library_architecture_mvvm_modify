import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/weatherIsLoadingQNoServiceViewModel/WeatherIsLoadingQNoServiceViewModelUsingGetNP.dart';

class WeatherWidgetListViewModel {
  @protected
  final WeatherIsLoadingQNoServiceViewModelUsingGetNP<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>> weatherIsLoadingQNoServiceViewModelUsingGetNP;

  WeatherWidgetListViewModel(this.weatherIsLoadingQNoServiceViewModelUsingGetNP);


  Stream<WeatherIsLoading>? get getStreamWeatherIsLoadingUsingGetNP {
    return weatherIsLoadingQNoServiceViewModelUsingGetNP.getStreamWeatherIsLoadingUsingGetNP;
  }
}