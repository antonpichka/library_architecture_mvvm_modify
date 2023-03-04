import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HttpClientService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:meta/meta.dart';

class WeatherSettingsQHttpClientAndHiveServiceViewModelUsingGetParameterStringForLocationFromOpenMeteoApiAndUpdateLocal<
        T extends WeatherSettings, Y extends ListWeatherSettings<T>>
    extends BaseModelQNamedServiceViewModel<T, Y>
    implements GetModelFromNamedServiceParameterNamedDataSource<T, String> {
  @protected
  final httpClientService = HttpClientService();
  @protected
  final hiveService = HiveService();

  static const constLocationNotFound = "locationNotFound";
  static const constWeatherNotFound = "weatherNotFound";

  Future<T?> getWeatherSettingsFromHttpClientAndHiveServiceParameterString(
      String parameter) {
    return getModelFromNamedServiceParameterNamed<String>(parameter);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<T?> getModelFromNamedServiceParameterNamedDS(String? parameter) async {
    try {
      final locationRequest = Uri.parse(
          "https://geocoding-api.open-meteo.com/v1/search?name=$parameter&count=1");
      final locationResponse = await httpClientService.getHttpClient
          ?.get(locationRequest)
          .timeout(const Duration(seconds: 5));
      if (locationResponse!.statusCode != 200) {
        throw NetworkException.fromStatusCode(
            this, locationResponse.statusCode);
      }
      final locationJson = jsonDecode(locationResponse.body) as Map;
      if (!locationJson.containsKey('results')) {
        throw LocalException(
            this, EnumGuiltyForLocalException.user, constLocationNotFound);
      }
      final locationListMap = locationJson['results'] as List;
      if (locationListMap.isEmpty) {
        throw LocalException(
            this, EnumGuiltyForLocalException.user, constLocationNotFound);
      }
      final locationFirstMapByLocationListMap =
          locationListMap.first as Map<String, dynamic>;
      final weatherRequest = Uri.parse(
          "https://api.open-meteo.com/v1/forecast?latitude=${locationFirstMapByLocationListMap[Location.constParameterLatitude]}&longitude=${locationFirstMapByLocationListMap[Location.constParameterLongitude]}&current_weather=true");
      final weatherResponse = await httpClientService.getHttpClient
          ?.get(weatherRequest)
          .timeout(const Duration(seconds: 5));
      if (weatherResponse!.statusCode != 200) {
        throw NetworkException.fromStatusCode(this, weatherResponse.statusCode);
      }
      final weatherJson =
          jsonDecode(weatherResponse.body) as Map<String, dynamic>;
      if (!weatherJson.containsKey('current_weather')) {
        throw LocalException(
            this, EnumGuiltyForLocalException.user, constWeatherNotFound);
      }
      final weatherFromMap =
          weatherJson['current_weather'] as Map<String, dynamic>;
      weatherFromMap[Weather.constParameterLocation] =
          locationFirstMapByLocationListMap;

      final Box? boxSettings = await hiveService.getBoxSettings();
      final Box? boxWeather = await hiveService.getBoxWeather();
      final weatherSettingsFromMapAndBoxSettings =
          getWeatherSettingsFromMapAndBoxSettings(weatherFromMap, boxSettings);
      updateWeatherSettingsFromBoxSettingsAndBoxWeatherAndWeatherSettingsFromMapAndBoxSettings(
          boxSettings, boxWeather, weatherSettingsFromMapAndBoxSettings);
      return weatherSettingsFromMapAndBoxSettings;
    } on NetworkException catch (e) {
      return getWeatherSettingsFromBaseException(e);
    } on LocalException catch (e) {
      return getWeatherSettingsFromBaseException(e);
    } catch (e) {
      return getWeatherSettingsFromBaseException(LocalException(
          this, EnumGuiltyForLocalException.device, e.toString()));
    }
  }

  @protected
  void
      updateWeatherSettingsFromBoxSettingsAndBoxWeatherAndWeatherSettingsFromMapAndBoxSettings(
          Box? boxSettings,
          Box? boxWeather,
          WeatherSettings? weatherSettingsFromMapAndBoxSettings) {
    boxSettings?.put(Settings.constParameterColor,
        weatherSettingsFromMapAndBoxSettings?.settings?.color);
    boxSettings?.put(Settings.constParameterTemperatureUnits,
        weatherSettingsFromMapAndBoxSettings?.settings?.temperatureUnits);
    boxWeather?.put(
        "${Weather.constParameterLocation}_${Location.constParameterId}",
        weatherSettingsFromMapAndBoxSettings?.weather?.location?.id);
    boxWeather?.put(
        "${Weather.constParameterLocation}_${Location.constParameterName}",
        weatherSettingsFromMapAndBoxSettings?.weather?.location?.name);
    boxWeather?.put(
        "${Weather.constParameterLocation}_${Location.constParameterLatitude}",
        weatherSettingsFromMapAndBoxSettings?.weather?.location?.latitude);
    boxWeather?.put(
        "${Weather.constParameterLocation}_${Location.constParameterLongitude}",
        weatherSettingsFromMapAndBoxSettings?.weather?.location?.longitude);
    boxWeather?.put(Weather.constParameterWeatherCode,
        weatherSettingsFromMapAndBoxSettings?.weather?.weatherCode);
    boxWeather?.put(Weather.constParameterTemperature,
        weatherSettingsFromMapAndBoxSettings?.weather?.temperature);
    boxWeather?.put(Weather.constParameterLastUpdated,
        weatherSettingsFromMapAndBoxSettings?.weather?.lastUpdated);
  }

  @protected
  T? getWeatherSettingsFromMapAndBoxSettings(
      Map<String, dynamic>? weatherFromMap, Box? boxSettings) {
    final weather = Weather.fromMapThisNetwork(weatherFromMap!);
    final settings = Settings.fromBoxSettings(boxSettings!);
    settings.color = weather.getNameColorFromGetEnumWeatherCondition;
    return WeatherSettings.success(weather, settings) as T?;
  }

  @protected
  T? getWeatherSettingsFromBaseException(BaseException? baseException) {
    return WeatherSettings.exception(baseException!) as T?;
  }
}
