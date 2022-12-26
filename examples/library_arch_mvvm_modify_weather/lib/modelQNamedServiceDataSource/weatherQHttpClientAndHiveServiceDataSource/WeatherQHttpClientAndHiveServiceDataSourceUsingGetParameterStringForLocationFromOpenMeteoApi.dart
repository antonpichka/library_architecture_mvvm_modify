import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientServiceDataSource/WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T extends Weather,Y extends ListWeather<T>>
    implements GetModelFromNamedServiceParameterNamedDataSource<T,StringTypeParameter>
{
  @protected
  final WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y> weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi;
  @protected
  final WeatherQHiveServiceDataSourceUsingGetNP<T,Y> weatherQHiveServiceDataSourceUsingGetNP;

  WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(
      this.weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi,
      this.weatherQHiveServiceDataSourceUsingGetNP);

  @override
  Future<T?> getModelFromNamedServiceParameterNamed(StringTypeParameter? parameter)
  async {
    final weatherFromHiveService = await weatherQHiveServiceDataSourceUsingGetNP
        .getModelFromNamedServiceNP();
    if(weatherFromHiveService!
        .getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      return weatherFromHiveService;
    }
    if(weatherFromHiveService
        .isOneParametersNamedForWeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi() ?? false)
    {
      return weatherFromHiveService;
    }
    final weatherFromHttpClient = await weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi
        .getModelFromNamedServiceParameterNamed(parameter);
    return weatherFromHttpClient;
  }
}