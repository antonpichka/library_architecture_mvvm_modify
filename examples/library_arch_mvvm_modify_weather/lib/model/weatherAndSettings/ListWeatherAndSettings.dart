import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListWeatherAndSettings<T extends WeatherAndSettings>
    extends BaseListModel<T>
{
  ListWeatherAndSettings.success(super.list) : super.success();
  ListWeatherAndSettings.exception(super.exception) : super.exception();

  static ListWeatherAndSettings<WeatherAndSettings> get getListWeatherAndSettingsForSuccess => ListWeatherAndSettings<WeatherAndSettings>.success([]);
}