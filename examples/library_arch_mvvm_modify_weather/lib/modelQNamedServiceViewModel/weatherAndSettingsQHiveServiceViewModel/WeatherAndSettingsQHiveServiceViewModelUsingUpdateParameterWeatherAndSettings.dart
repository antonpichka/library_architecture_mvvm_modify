import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingUpdateParameterSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingUpdateParameterWeather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherAndSettingsQNamedServiceViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/WeatherAndSettingsTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class WeatherAndSettingsQHiveServiceViewModelUsingUpdateParameterWeatherAndSettings<T extends WeatherAndSettings,Y extends ListWeatherAndSettings<T>>
    extends WeatherAndSettingsQNamedServiceViewModel<T,Y>
{
  final WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings<T,Y> _dataSource;

  WeatherAndSettingsQHiveServiceViewModelUsingUpdateParameterWeatherAndSettings(
      super.iCloneStreamModelForSuccess,
      WeatherQHiveServiceDataSourceUsingUpdateParameterWeather<Weather,ListWeather<Weather>> weatherQHiveServiceDataSourceUsingUpdateParameterWeather,
      SettingsQHiveServiceDataSourceUsingUpdateParameterSettings<Settings,ListSettings<Settings>> settingsQHiveServiceDataSourceUsingUpdateParameterSettings,)
      : _dataSource = WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings(
      weatherQHiveServiceDataSourceUsingUpdateParameterWeather,
      settingsQHiveServiceDataSourceUsingUpdateParameterSettings),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherAndSettingsQHiveServiceDataSourceUsingUpdateParameterWeatherAndSettings<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<BoolTypeParameter?> updateWeatherAndSettingsToHiveServiceParameterWeatherAndSettings(WeatherAndSettingsTypeParameter<T> typeParameter) {
    return updateModelToNamedServiceParameterNamed<BoolTypeParameter,WeatherAndSettingsTypeParameter<T>>(typeParameter);
  }
}