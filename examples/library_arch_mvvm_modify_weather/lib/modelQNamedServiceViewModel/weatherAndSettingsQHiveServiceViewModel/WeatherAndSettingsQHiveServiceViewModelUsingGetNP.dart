import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherAndSettingsQHiveServiceDataSource/WeatherAndSettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/WeatherAndSettingsQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class WeatherAndSettingsQHiveServiceViewModelUsingGetNP<T extends WeatherSettings,Y extends ListWeatherSettings<T>>
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

  T? get getWeatherAndSettingsUsingGetNP {
    return getModel(EnumForIStreamModelVM.getNP);
  }

  Future<T?> getWeatherAndSettingsFromHiveServiceNPAndSetWeatherAndSettings() {
    return getModelFromNamedServiceNPAndSetModel();
  }
}