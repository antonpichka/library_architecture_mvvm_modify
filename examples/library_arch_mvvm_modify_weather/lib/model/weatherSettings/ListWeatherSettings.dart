import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListWeatherSettings<T extends WeatherSettings>
    extends BaseListModel<T>
{
  ListWeatherSettings.success(super.list) : super.success();
  ListWeatherSettings.exception(super.exception) : super.exception();

  static ListWeatherSettings<WeatherSettings> get getListWeatherAndSettingsForSuccess => ListWeatherSettings<WeatherSettings>.success([]);
}