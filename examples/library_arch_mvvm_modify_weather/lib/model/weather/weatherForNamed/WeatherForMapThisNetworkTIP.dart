import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';

class WeatherForMapThisNetworkTIP
    implements IModelForNamedTIP<Weather,Map<String,dynamic>>
{
  @override
  Weather? getModelForNamedTIP(Map<String, dynamic>? parameter) {
    return Weather.fromMapThisNetwork(parameter!);
  }

}