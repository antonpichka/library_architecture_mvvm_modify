import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherAndSettingsQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';

class WeatherAndSettingsQHiveServiceViewModelUsingGetNP<T extends WeatherAndSettings,Y extends ListWeatherAndSettings<T>>
    extends WeatherAndSettingsQNamedServiceViewModel<T,Y>
{
  final WeatherAndSettingsQHiveServiceDataSourceUsingGetNP<T,Y> _dataSource;

  WeatherAndSettingsQHiveServiceViewModelUsingGetNP(
      super.iCloneStreamModelForSuccess,
      WeatherQHiveServiceDataSourceUsingGetNP<Weather,ListWeather<Weather>> weatherQHiveServiceDataSourceUsingGetNP,
      SettingsQHiveServiceDataSourceUsingGetNP<Settings,ListSettings<Settings>> settingsQHiveServiceDataSourceUsingGetNP,
      IModelForNamedNP<T> iWeatherAndSettingsForDefaultNP)
      : _dataSource = WeatherAndSettingsQHiveServiceDataSourceUsingGetNP(
      weatherQHiveServiceDataSourceUsingGetNP,
      settingsQHiveServiceDataSourceUsingGetNP,
      iWeatherAndSettingsForDefaultNP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  WeatherAndSettingsQHiveServiceDataSourceUsingGetNP<T,Y>? get getModelQNamedServiceDataSource => _dataSource;
}