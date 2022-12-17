import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';

class WeatherForNetworkExceptionTIP
    implements IModelForNamedTIP<Weather,NetworkException>
{
  @override
  Weather getModelForNamedTIP(NetworkException parameter) {
    return Weather.exception(parameter);
  }
}