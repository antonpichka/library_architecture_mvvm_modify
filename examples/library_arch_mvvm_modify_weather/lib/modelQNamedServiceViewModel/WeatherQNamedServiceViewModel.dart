import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class WeatherQNamedServiceViewModel<T extends Weather,Y extends ListWeather<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  WeatherQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  WeatherQNamedServiceViewModel.noDataSource(super.list, super.iCloneStreamModelForSuccess) : super.noDataSource();
}