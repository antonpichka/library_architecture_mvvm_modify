import 'package:library_arch_mvvm_modify_weather/model/weatherAndSettings/WeatherAndSettings.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';

class WeatherAndSettingsTypeParameter<T extends WeatherAndSettings>
    extends BaseTypeParameter<T>
{
  WeatherAndSettingsTypeParameter.success(super.parameter) : super.success();
}