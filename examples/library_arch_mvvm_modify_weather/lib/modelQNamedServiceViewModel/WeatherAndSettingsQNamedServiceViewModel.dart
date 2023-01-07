import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_there_is_state_view_model.dart';

abstract class WeatherAndSettingsQNamedServiceViewModel<T extends WeatherAndSettings,Y extends ListWeatherAndSettings<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  WeatherAndSettingsQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  WeatherAndSettingsQNamedServiceViewModel.noDataSource(super.list, super.iCloneStreamModelForSuccess) : super.noDataSource();
}