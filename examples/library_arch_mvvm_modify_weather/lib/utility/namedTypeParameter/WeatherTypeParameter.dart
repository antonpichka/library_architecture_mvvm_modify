import 'package:library_arch_mvvm_modify_weather/model/weather/Weather.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/result.dart';

class WeatherTypeParameter<T extends Weather>
    extends Result<T>
{
  WeatherTypeParameter.success(super.parameter) : super.success();
}