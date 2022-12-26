import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamWeatherIsLoadingForSuccess
    implements ICloneStreamModelForSuccess<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>
{
  @override
  IStreamModel<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>(WeatherIsLoading.getWeatherIsLoadingForSuccess,ListWeatherIsLoading.getListWeatherIsLoadingForSuccess);
  }
}