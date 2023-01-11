import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/ListWeatherSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamWeatherSettings
    implements IInitializedStreamModel<WeatherSettings,ListWeatherSettings>
{
  @override
  IStreamModel<WeatherSettings, ListWeatherSettings>? initializedStreamModel() {
    return DefaultStreamModel<WeatherSettings, ListWeatherSettings>(WeatherSettings.getWeatherSettingsForSuccess,ListWeatherSettings.getListWeatherAndSettingsForSuccess);
  }
}