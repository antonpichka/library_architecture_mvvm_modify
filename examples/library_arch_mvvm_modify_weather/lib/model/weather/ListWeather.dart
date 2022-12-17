import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListWeather<T extends Weather>
    extends BaseListModel<T>
{
  ListWeather.success(super.list) : super.success();
  ListWeather.exception(super.exception) : super.exception();

  static ListWeather<Weather> get getListWeatherForSuccess => ListWeather<Weather>.success([]);
}