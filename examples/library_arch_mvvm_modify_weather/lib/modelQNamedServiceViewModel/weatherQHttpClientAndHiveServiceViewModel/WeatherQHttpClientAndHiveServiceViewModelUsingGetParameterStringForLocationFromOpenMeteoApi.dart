import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientAndHiveServiceDataSource/WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientServiceDataSource/WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherQNamedServiceViewModel.dart';

class WeatherQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<T extends Weather,Y extends ListWeather<T>>
    extends WeatherQNamedServiceViewModel<T,Y>
{
  final WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y> _dataSource;

  WeatherQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi(
      super.iCloneStreamModelForSuccess,
      WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y> weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi,
      WeatherQHiveServiceDataSourceUsingGetNP<T,Y> weatherQHiveServiceDataSourceUsingGetNP)
      : _dataSource = WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(
      weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi,
      weatherQHiveServiceDataSourceUsingGetNP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y>? get getModelQNamedServiceDataSource => _dataSource;
}