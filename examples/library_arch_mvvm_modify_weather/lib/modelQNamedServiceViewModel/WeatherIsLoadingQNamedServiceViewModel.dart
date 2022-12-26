import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class WeatherIsLoadingQNamedServiceViewModel<T extends WeatherIsLoading,Y extends ListWeatherIsLoading<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  WeatherIsLoadingQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  WeatherIsLoadingQNamedServiceViewModel.noDataSource(super.list, super.iCloneStreamModelForSuccess) : super.noDataSource();
}