import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientServiceDataSource/WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<T extends Weather,Y extends ListWeather<T>>
    extends WeatherQNamedServiceViewModel<T,Y>
{
  final WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y> _dataSource;

  WeatherQHttpClientServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,Map<String,dynamic>> iWeatherForMapTIP,
      IModelForNamedTIP<T,NetworkException> iWeatherForNetworkExceptionTIP,
      IModelForNamedTIP<T,LocalException> iWeatherForLocalExceptionTIP)
      :  _dataSource = WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(iWeatherForMapTIP,iWeatherForNetworkExceptionTIP,iWeatherForLocalExceptionTIP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<T?> getWeatherFromHttpClientServiceParameterString(StringTypeParameter typeParameter) {
    return getModelFromNamedServiceParameterNamedDS<StringTypeParameter>(typeParameter);
  } 
}