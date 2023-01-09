import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/ListWeatherIsLoading.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamWeatherIsLoading
    implements IInitializedStreamModel<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>
{
  @override
  IStreamModel<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>? initializedStreamModel() {
    return DefaultStreamModel<WeatherIsLoading,ListWeatherIsLoading<WeatherIsLoading>>(WeatherIsLoading.getWeatherIsLoadingForSuccess,ListWeatherIsLoading.getListWeatherIsLoadingForSuccess);
  }
}