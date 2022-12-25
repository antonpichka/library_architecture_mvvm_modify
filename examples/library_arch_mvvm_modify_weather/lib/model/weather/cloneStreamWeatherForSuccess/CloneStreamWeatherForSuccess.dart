import 'package:library_arch_mvvm_modify_weather/model/weather/ListWeather.dart';
import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamWeatherForSuccess
    implements ICloneStreamModelForSuccess<Weather,ListWeather<Weather>>
{
  @override
  IStreamModel<Weather, ListWeather<Weather>>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<Weather,ListWeather>(Weather.getWeatherForSuccess,ListWeather.getListWeatherForSuccess);
  }
}