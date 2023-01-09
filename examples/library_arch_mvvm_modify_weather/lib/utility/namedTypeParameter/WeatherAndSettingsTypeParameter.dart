import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherSettings.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/result.dart';

class WeatherAndSettingsTypeParameter<T extends WeatherSettings>
    extends Result<T>
{
  WeatherAndSettingsTypeParameter.success(super.parameter) : super.success();
}