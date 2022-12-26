import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

enum EnumWeatherIsLoadingForMainView {
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
  Weather? weather;

  WeatherIsLoading.success(this.isLoading,this.weather) : super.success(weather?.getParameterUniqueId);
  WeatherIsLoading.exception(super.exception) : super.exception();

  static WeatherIsLoading get getWeatherIsLoadingForSuccess => WeatherIsLoading.success(false, null);

  EnumWeatherIsLoadingForMainView get getEnumWeatherIsLoadingForMainView {
    if(isLoading ?? false) {
      return EnumWeatherIsLoadingForMainView.isLoading;
    }
    if(exceptionController.isExceptionNotEqualsNull()) {
      return EnumWeatherIsLoadingForMainView.exception;
    }
    if(isOneParametersNamedForGetEnumWeatherIsLoadingForMainView() ?? false) {
      return EnumWeatherIsLoadingForMainView.isEmpty;
    }
    return EnumWeatherIsLoadingForMainView.success;
  }

  @protected
  bool? isOneParametersNamedForGetEnumWeatherIsLoadingForMainView() {
    return weather == null;
  }
}