import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_there_is_state_view_model.dart';

abstract class WeatherAndSettingsQNamedServiceViewModel<T extends WeatherSettings,Y extends ListWeatherSettings<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  WeatherAndSettingsQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  WeatherAndSettingsQNamedServiceViewModel.noDataSource(super.list, super.iCloneStreamModelForSuccess) : super.noDataSource();
}