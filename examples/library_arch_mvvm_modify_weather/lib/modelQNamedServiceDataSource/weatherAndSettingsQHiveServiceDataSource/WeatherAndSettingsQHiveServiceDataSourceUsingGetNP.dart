import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/weatherQHiveServiceDataSource/WeatherQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';

class WeatherAndSettingsQHiveServiceDataSourceUsingGetNP<T extends WeatherSettings,Y extends ListWeatherSettings<T>>
    implements
        GetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final WeatherQHiveServiceDataSourceUsingGetNP<Weather,ListWeather<Weather>> weatherQHiveServiceDataSourceUsingGetNP;
  @protected
  final SettingsQHiveServiceDataSourceUsingGetNP<Settings,ListSettings<Settings>> settingsQHiveServiceDataSourceUsingGetNP;
  @protected
  final IModelForNamedNP<T> iWeatherAndSettingsForDefaultNP;

  WeatherAndSettingsQHiveServiceDataSourceUsingGetNP(
      this.weatherQHiveServiceDataSourceUsingGetNP,
      this.settingsQHiveServiceDataSourceUsingGetNP,
      this.iWeatherAndSettingsForDefaultNP);

  @override
  Future<T?> getModelFromNamedServiceNPDS()
  async {
    final weatherAndSettings = iWeatherAndSettingsForDefaultNP.getModelForNamedNP();
    final weather = await weatherQHiveServiceDataSourceUsingGetNP.getModelFromNamedServiceNPDS();
    if(weather
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherAndSettings
          ?.setOneParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP = weather;
      return weatherAndSettings;
    }
    final settings = await settingsQHiveServiceDataSourceUsingGetNP.getModelFromNamedServiceNPDS();
    if(settings
        !.getParameterExceptionController
        .isExceptionNotEqualsNull())
    {
      weatherAndSettings
          ?.setTwoParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP = settings;
      return weatherAndSettings;
    }
    weatherAndSettings
        ?.setThreeParametersNamedForWeatherAndSettingsQHiveServiceDataSourceUsingGetNP(weather,settings);
    return weatherAndSettings;
  }
}