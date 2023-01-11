import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

class WeatherSettings
    extends BaseModel
{
  Weather? weather;
  Settings? settings;

  WeatherSettings.success(this.weather,this.settings) : super.success("");
  WeatherSettings.exception(super.exception) : super.exception();

  static WeatherSettings get getWeatherSettingsForSuccess => WeatherSettings.success(Weather.getWeatherForSuccess,Settings.getSettingsForSuccess);
}