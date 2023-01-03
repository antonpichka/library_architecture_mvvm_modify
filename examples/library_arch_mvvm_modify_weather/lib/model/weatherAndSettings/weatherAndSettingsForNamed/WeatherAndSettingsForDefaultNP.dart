import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';

class WeatherAndSettingsForDefaultNP
    implements IModelForNamedNP<WeatherAndSettings>
{
  @override
  WeatherAndSettings? getModelForNamedNP() {
    return WeatherAndSettings.getWeatherAndSettingsForSuccess;
  }
}