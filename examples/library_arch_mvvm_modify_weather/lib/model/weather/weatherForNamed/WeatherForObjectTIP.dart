import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class WeatherForObjectTIP
    implements IModelForNamedTIP<Weather,Object>
{
  @override
  Weather? getModelForNamedTIP(Object? parameter) {
    if(parameter == null) {
      return null;
    }
    final weather = parameter as Weather;
    return Weather.successWhereExistsParameterLastUpdated(
        weather.getParameterLocation,
        weather.getParameterWeatherCode,
        weather.getParameterTemperature,
        weather.getParameterLastUpdated);
  }

}