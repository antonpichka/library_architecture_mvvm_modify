import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/ListWeatherAndSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamWeatherAndSettingsForSuccess
    implements ICloneStreamModelForSuccess<WeatherAndSettings,ListWeatherAndSettings<WeatherAndSettings>>
{
  @override
  IStreamModel<WeatherAndSettings, ListWeatherAndSettings<WeatherAndSettings>>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<WeatherAndSettings, ListWeatherAndSettings<WeatherAndSettings>>(WeatherAndSettings.getWeatherAndSettingsForSuccess,ListWeatherAndSettings.getListWeatherAndSettingsForSuccess);
  }
}