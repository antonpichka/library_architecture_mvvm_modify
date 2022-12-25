import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HttpClientService.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T extends Weather,Y extends ListWeather<T>>
    implements GetModelFromNamedServiceParameterNamedDataSource<T,StringTypeParameter>
{
  @protected
  final httpClientService = HttpClientService();
  @protected
  final IModelForNamedTIP<T,Map<String,dynamic>> iWeatherForMapTIP;
  @protected
  final IModelForNamedTIP<T,NetworkException> iWeatherForNetworkExceptionTIP;
  @protected
  final IModelForNamedTIP<T,LocalException> iWeatherForLocalExceptionTIP;
  static const constLocationNotFound = "locationNotFound";
  static const constWeatherNotFound = "weatherNotFound";

  WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(
      this.iWeatherForMapTIP,
      this.iWeatherForNetworkExceptionTIP,
      this.iWeatherForLocalExceptionTIP);

  @override
  Future<T?> getModelFromNamedServiceParameterNamed(StringTypeParameter? parameter)
  async {
    try {
      final locationRequest = Uri.https(
        constBaseUrlGeocodingOpenMeteoApi,
        '/v1/search',
        {'name': parameter!.parameter, 'count': '1'},
      );
      final locationResponse = await httpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(locationRequest);
      if (locationResponse!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,locationResponse.statusCode);
      }
      final locationJson = jsonDecode(locationResponse.body) as Map;
      if(!locationJson.containsKey('results')) {
        throw LocalException(this,EnumGuiltyForLocalException.user,constLocationNotFound);
      }
      final locationListMap = locationJson['results'] as List;
      if(locationListMap.isEmpty) {
        throw LocalException(this,EnumGuiltyForLocalException.user,constLocationNotFound);
      }
      final locationFirstMapByLocationListMap = locationListMap.first as Map<String,dynamic>;
      final weatherRequest = Uri.https(
          constBaseUrlOpenMeteoApi,
          'v1/forecast',
          {Location.constParameterLatitude: '${locationFirstMapByLocationListMap[Location.constParameterLatitude]}', Location.constParameterLongitude: '${locationFirstMapByLocationListMap[Location.constParameterLongitude]}', 'current_weather': 'true'}
      );
      final weatherResponse = await httpClientService
          .getHttpClientSingleton
          ?.getHttpClient
          ?.get(weatherRequest);
      if (weatherResponse!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,weatherResponse.statusCode);
      }
      final weatherJson = jsonDecode(weatherResponse.body) as Map<String, dynamic>;
      if (!weatherJson.containsKey('current_weather')) {
        throw LocalException(this,EnumGuiltyForLocalException.user,constWeatherNotFound);
      }
      final weatherMap = weatherJson['current_weather'] as Map<String, dynamic>;
      weatherMap[Weather.constParameterLocation] = locationFirstMapByLocationListMap;
      return iWeatherForMapTIP.getModelForNamedTIP(weatherMap);
    } on NetworkException catch(e) {
      return iWeatherForNetworkExceptionTIP.getModelForNamedTIP(e);
    } on LocalException catch(e) {
      return iWeatherForLocalExceptionTIP.getModelForNamedTIP(e);
    } catch(e) {
      return iWeatherForLocalExceptionTIP.getModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}