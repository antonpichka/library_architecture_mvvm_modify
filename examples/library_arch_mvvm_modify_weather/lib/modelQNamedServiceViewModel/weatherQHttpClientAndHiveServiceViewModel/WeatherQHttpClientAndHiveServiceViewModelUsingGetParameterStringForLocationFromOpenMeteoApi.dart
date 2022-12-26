import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientAndHiveServiceDataSource/WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientServiceDataSource/WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';

class WeatherQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi<T extends Weather,Y extends ListWeather<T>>
    extends WeatherQNamedServiceViewModel<T,Y>
{
  final WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y> _dataSource;

  WeatherQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApi(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,Map<String,dynamic>> iWeatherForMapTIP,
      IModelForNamedTIP<T,Object> iWeatherForObjectTIP,
      IModelForNamedTIP<T,NetworkException> iWeatherForNetworkExceptionTIP,
      IModelForNamedTIP<T,LocalException> iWeatherForLocalExceptionTIP,
      IModelForNamedNP<T> iWeatherForDefaultWhereKeyNotFoundNP)
      : _dataSource = WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(
      WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(iWeatherForMapTIP,iWeatherForNetworkExceptionTIP,iWeatherForLocalExceptionTIP),
      WeatherQHiveServiceDataSourceUsingGetNP(iWeatherForObjectTIP,iWeatherForLocalExceptionTIP,iWeatherForDefaultWhereKeyNotFoundNP)),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T,Y>? get getModelQNamedServiceDataSource => _dataSource;
}