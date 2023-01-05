import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingUpdateParameterSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/SettingsTypeParameter.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherAndSettingsTypeParameter.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings<T extends WeatherAndSettings,Y extends ListWeatherAndSettings<T>>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,WeatherAndSettingsTypeParameter<T>>
{
  @protected
  final WeatherQHiveServiceDataSourceUsingUpdateParameterWeather<Weather,ListWeather<Weather>> weatherQHiveServiceDataSourceUsingUpdateParameterWeather;
  @protected
  final SettingsQHiveServiceDataSourceUsingUpdateParameterSettings<Settings,ListSettings<Settings>> settingsQHiveServiceDataSourceUsingUpdateParameterSettings;

  WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings(
      this.weatherQHiveServiceDataSourceUsingUpdateParameterWeather,
      this.settingsQHiveServiceDataSourceUsingUpdateParameterSettings);

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamed(
      WeatherAndSettingsTypeParameter<T>? parameter)
  async {
    final result = await weatherQHiveServiceDataSourceUsingUpdateParameterWeather
        .updateModelToNamedServiceParameterNamed(WeatherTypeParameter<Weather>.success(parameter!.parameter!.getOneParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingParameterWeatherAndSettings));
    if(result
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      return result;
    }
    final resultTwo = await settingsQHiveServiceDataSourceUsingUpdateParameterSettings
        .updateModelToNamedServiceParameterNamed(SettingsTypeParameter<Settings>.success(parameter.parameter!.getTwoParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingParameterWeatherAndSettings));
    if(resultTwo
        !.exceptionController
        .isExceptionNotEqualsNull())
    {
      return resultTwo;
    }
    return BoolTypeParameter.success(true);
  }
}