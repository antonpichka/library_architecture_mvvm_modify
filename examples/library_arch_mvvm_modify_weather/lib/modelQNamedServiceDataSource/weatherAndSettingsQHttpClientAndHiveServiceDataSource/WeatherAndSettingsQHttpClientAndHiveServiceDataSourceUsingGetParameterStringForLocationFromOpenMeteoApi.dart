import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHttpClientServiceDataSource/WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherAndSettingsTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/string_type_parameter.dart';

class WeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<T extends WeatherAndSettings,Y extends ListWeatherAndSettings<T>>
    implements GetModelFromNamedServiceParameterNamedDataSource<T,StringTypeParameter>
{
  @protected
  final WeatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi<Weather,ListWeather<Weather>> weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi;
  @protected
  final WeatherAndSettingsQHiveServiceDataSourceUsingGetNP<T,Y> weatherAndSettingsQHiveServiceDataSourceUsingGetNP;
  @protected
  final WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings<T,Y> weatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings;
  @protected
  final IModelForNamedNP<T> iWeatherAndSettingsForDefaultNP;

  WeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi(
      this.weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi,
      this.weatherAndSettingsQHiveServiceDataSourceUsingGetNP,
      this.weatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings,
      this.iWeatherAndSettingsForDefaultNP);

  @override
  Future<T?> getModelFromNamedServiceParameterNamed(
      StringTypeParameter? parameter)
  async {
    T? weatherAndSettingsForDefaultNP = iWeatherAndSettingsForDefaultNP.getModelForNamedNP();
    final weatherFromHttpClient = await weatherQHttpClientServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi
        .getModelFromNamedServiceParameterNamed(parameter);
    if(weatherFromHttpClient
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherAndSettingsForDefaultNP
          ?.setOneParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi = weatherFromHttpClient;
      return weatherAndSettingsForDefaultNP;
    }
    final weatherAndSettingsFromHive = await weatherAndSettingsQHiveServiceDataSourceUsingGetNP
        .getModelFromNamedServiceNP();
    if(weatherAndSettingsFromHive
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherAndSettingsForDefaultNP
          ?.setTwoParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi = weatherAndSettingsFromHive;
      return weatherAndSettingsForDefaultNP;
    }
    weatherAndSettingsForDefaultNP = weatherAndSettingsFromHive;
    weatherAndSettingsForDefaultNP
        .setThreeParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi = weatherFromHttpClient;
    final result = await weatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings
        .updateModelToNamedServiceParameterNamed(WeatherAndSettingsTypeParameter<T>.success(weatherAndSettingsForDefaultNP));
    if(result
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      weatherAndSettingsForDefaultNP
          .setFourParametersNamedForWeatherAndSettingsQHttpClientAndHiveServiceDataSourceUsingGetParameterStringForLocationFromOpenMeteoApi = result;
      return weatherAndSettingsForDefaultNP;
    }
    return weatherAndSettingsForDefaultNP;
  }
}