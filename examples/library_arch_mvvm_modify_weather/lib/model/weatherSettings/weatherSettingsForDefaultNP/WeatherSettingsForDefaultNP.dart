import 'package:library_arch_mvvm_modify_weather/model/weatherSettings/WeatherSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';

class WeatherSettingsForDefaultNP
    implements IModelForNamedNP<WeatherSettings>
{
  @override
  WeatherSettings? getModelForNamedNP() {
    return WeatherSettings.getWeatherAndSettingsForSuccess;
  }
}