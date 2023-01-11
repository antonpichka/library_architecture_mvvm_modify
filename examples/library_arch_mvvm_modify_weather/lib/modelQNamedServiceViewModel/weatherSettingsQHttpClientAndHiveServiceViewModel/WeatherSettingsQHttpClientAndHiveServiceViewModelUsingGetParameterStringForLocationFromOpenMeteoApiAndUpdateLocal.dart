import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HttpClientService.dart';
import 'package:library_arch_mvvm_modify_weather/utility/Utility.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:meta/meta.dart';

class WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal<T extends WeatherSettings,Y extends ListWeatherSettings<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        GetModelFromNamedServiceParameterNamedDataSource<T,String>
{
  @protected
  final httpClientService = HttpClientService();
  @protected
  final hiveService = HiveService();

  static const constLocationNotFound = "locationNotFound";
  static const constWeatherNotFound = "weatherNotFound";

  Future<T?> getWeatherSettingsFromHttpClientAndHiveServiceParameterString(String parameter) {
    return getModelFromNamedServiceParameterNamed<String>(parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<T?> getModelFromNamedServiceParameterNamedDS(String? parameter)
  async {
    try {
      final locationRequest = Uri.https(
        constBaseUrlGeocodingOpenMeteoApi,
        '/v1/search',
        {
          'name': parameter,
          'count': '1'
        },
      );
      final locationResponse = await httpClientService
          .getHttpClient
          ?.get(locationRequest);
      if(locationResponse!.statusCode != 200) {
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
          {
            Location.constParameterLatitude: '${locationFirstMapByLocationListMap[Location.constParameterLatitude]}',
            Location.constParameterLongitude: '${locationFirstMapByLocationListMap[Location.constParameterLongitude]}',
            'current_weather': 'true'
          });
      final weatherResponse = await httpClientService
          .getHttpClient
          ?.get(weatherRequest);
      if(weatherResponse!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this,weatherResponse.statusCode);
      }
      final weatherJson = jsonDecode(weatherResponse.body) as Map<String, dynamic>;
      if(!weatherJson.containsKey('current_weather')) {
        throw LocalException(this,EnumGuiltyForLocalException.user,constWeatherNotFound);
      }
      final weatherFromMap = weatherJson['current_weather'] as Map<String, dynamic>;
      weatherFromMap[Weather.constParameterLocation] = locationFirstMapByLocationListMap;

      final Box? boxSettings = await hiveService
          .getBoxSettings();
      final Box? boxWeather = await hiveService
          .getBoxWeather();
      final objectFromBoxSettings = boxSettings?.get(
          Settings.constKeySettingsQHiveService,
          defaultValue: getSettingsForSuccessWhereKeyNotFound());

      final weatherSettingsFromMapAndBoxSettings = getWeatherSettingsFromMapAndBoxSettings(weatherFromMap,objectFromBoxSettings);
      boxSettings?.put(Settings.constKeySettingsQHiveService,weatherSettingsFromMapAndBoxSettings?.settings);
      boxWeather?.put(Weather.constKeyWeatherQHiveService,weatherSettingsFromMapAndBoxSettings?.weather);
      return weatherSettingsFromMapAndBoxSettings;
    } on NetworkException catch(e) {
      return getWeatherSettingsFromBaseException(e);
    } on LocalException catch(e) {
      return getWeatherSettingsFromBaseException(e);
    } catch(e) {
      return getWeatherSettingsFromBaseException(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  T? getWeatherSettingsFromMapAndBoxSettings(Map<String, dynamic>? weatherFromMap,Object? objectFromBoxSettings) {
    final weather = Weather.fromMapThisNetwork(weatherFromMap!);
    final settings = objectFromBoxSettings as Settings;
    settings.color = weather.getNameColorFromGetEnumWeatherCondition;
    return WeatherSettings.success(weather,settings) as T?;
  }

  @protected
  T? getWeatherSettingsFromBaseException(BaseException? baseException) {
    return WeatherSettings.exception(baseException!) as T?;
  }

  @protected
  Settings? getSettingsForSuccessWhereKeyNotFound() {
    return Settings.getSettingsForSuccessWhereKeyNotFound;
  }

  @protected
  Weather? getWeatherForSuccessWhereKeyNotFound() {
    return Weather.getWeatherForSuccessWhereKeyNotFound;
  }
}