import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';

class WeatherForDefaultWhereKeyNotFoundNP
    implements IModelForNamedNP<Weather>
{
  @override
  Weather? getModelForNamedNP() {
    return Weather.getWeatherForSuccessWhereKeyNotFound;
  }
}